package com.frontControlloer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class frontControllerEx
 */
public class FrontControllerServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      actionDo(request,response);
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       actionDo(request,response);
   }
   
   private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         System.out.println("actionDo");
         
         String uri = request.getRequestURI();
         System.out.println("uri : " + uri);
         
         String conPath = request.getContextPath();
         System.out.println("conPath : " + conPath);
         
         String command = uri.substring(conPath.length());
         System.out.println("commoand : " + command);
         
         if(command.equals("insert.do")) {
            System.out.println("/insert.do");
            System.out.println("-------------------------");
         } else if(command.equals("insert.do")) {
            System.out.println("/update.do");
            System.out.println("-------------------------");
         } else if(command.equals("update.do")) {
            System.out.println("/select.do");
            System.out.println("-------------------------");
         } else if(command.equals("select.do")) {
            System.out.println("/delete.do");
            System.out.println("-------------------------");
         }
       
   }
}