
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/elaboratebackend")
public class elaboratepagebackend extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		float salary =Float.parseFloat(request.getParameter("salary"));
        float housing = Float.parseFloat(request.getParameter("house"));
        float health = Float.parseFloat(request.getParameter("health"));
        float gifting = Float.parseFloat(request.getParameter("gifting"));
        float dining = Float.parseFloat(request.getParameter("dine"));
        float subcription = Float.parseFloat(request.getParameter("sub"));
        float WantANewPhone = Float.parseFloat(request.getParameter("wantP"));
        float WantAnewTv = Float.parseFloat(request.getParameter("wantTV"));
        float saving = salary - (housing + health + gifting + dining + subcription + WantANewPhone +WantAnewTv);
        
        


        // DO CALCULATION FOR INCREASING SAVING PART....

        float PercentOfSaving ;

        while(subcription > 0 || dining > 0 || gifting > 0){
            PercentOfSaving = (saving/salary)*100;
            if(subcription > 0){
                saving = saving + (subcription*30)/100 + (dining*20)/100 + (gifting*10)/100;
                subcription = subcription - (subcription*30)/100;
                dining -= (dining*20)/100;
                gifting -= (gifting*10)/100;
            }
            else if(subcription <= 0 && dining > 0){
                saving = saving + (dining*10)/100 + (gifting*5)/100;
                dining -= (dining*10)/100;
                gifting -= (gifting*5)/100;
            }
            else if(subcription <= 0 && dining <= 0 && gifting > 0){
                saving = saving + (gifting*5)/100;
                gifting -= (gifting*5)/100;
            }
            if(PercentOfSaving >= 20){
                System.out.println("saving2 " +saving);
                setAndSend(salary, housing, health, gifting, dining, subcription, WantANewPhone, WantAnewTv, PercentOfSaving, request, response);
                return;
            }
        }

        // CHECK WHETHER SAVING BECOME 20 PERCENT OF SALARY


        while(WantANewPhone > 0){
            PercentOfSaving = (saving/salary)*100;
            if( PercentOfSaving < 20){
                saving = saving + (WantANewPhone*20)/100 ;
                WantANewPhone -= (WantANewPhone*20)/100 ;
            }
            else{
                System.out.println("saving3 " +saving);
                setAndSend(salary, housing, health, gifting, dining, subcription, WantANewPhone, WantAnewTv, PercentOfSaving, request, response);
                return;
            }
        }

        System.out.println("Buy new Phone after this month");

        // LAST TIME CHECK FOR SAVING!!



        while(WantAnewTv > 0){
            PercentOfSaving = (saving/salary)*100;
            if( PercentOfSaving < 20){
                saving = saving + (WantAnewTv*20)/100 ;
                WantAnewTv  -=  (WantAnewTv*20)/100 ;
            }
            else{
                System.out.println("saving4 " +saving);
                setAndSend(salary, housing, health, gifting, dining, subcription, WantANewPhone, WantAnewTv, PercentOfSaving, request, response);
                return;
            }
        }

        System.out.println("Buy new Tv after this month");

        // IF SAVING < 20 PERCENT GIVE MESSAGE TO USER...........
        PercentOfSaving = (saving/salary)*100;
        if(PercentOfSaving < 20){
            System.out.println("Please reconsider your priority and earn more money");
        } 
      setAndSend(salary, housing, health, gifting, dining, subcription, WantANewPhone, WantAnewTv, PercentOfSaving, request, response);
	}
	void setAndSend(float salary,float housing, float health, float gifting, float dining, float subcription, float WantANewPhone, float WantAnewTv, float saving, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("salary" ,salary);
        request.setAttribute("housing" ,housing); 
        request.setAttribute("health" ,health);
        request.setAttribute("gifting",gifting);
        request.setAttribute("dining",dining);
        request.setAttribute("subcription",subcription);
        request.setAttribute("WantANewPhone",WantANewPhone);
        request.setAttribute("WantAnewTv",WantAnewTv);
        request.setAttribute("saving",saving);
        
        request.getRequestDispatcher("/final.jsp").forward(request,response);
	}
}
