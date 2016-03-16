package com.lab2;

import com.lab2.model.PersonalData;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;


class Feedback {
    String name;
    String mail;
    String comment;

    public Feedback(String name, String mail, String comment) {
        this.name = name;
        this.mail = mail;
        this.comment = comment;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

        public String toString() {
            return name + " " + mail + " " + comment;
        }
}

@WebServlet(name = "/zad2_5", urlPatterns = {"/zad2_5"})
public class Zad5 extends HttpServlet {

   // private List <Feedback> feedbacks = new Vector<>();

    List<PersonalData> personalDatas = new Vector<PersonalData>(Arrays.asList(
            new PersonalData("login1", "password1", "name1", "surname1"),
            new PersonalData("login2", "password2", "name2", "surname2"),
            new PersonalData("login3", "password3", "name3", "surname3"),
            new PersonalData("login4", "password4", "name4", "surname4")
    ));


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();

        if(login.isEmpty()) {
            //out.println("empty login");
            //out.close();
            response.sendRedirect("lab2.jsp");
            //return;
        } else if(password.isEmpty()) {
            //out.println("empty password");
            //out.close();
            response.sendRedirect("lab2.jsp");
            //return;
        } else if(!personalDatas.contains(new PersonalData(login, password, "", ""))){
           // out.println("bad login or password");
           // out.close();
            response.sendRedirect("lab2.jsp");
            //return;
        } else
            response.sendRedirect("lab2_5.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("name");
        String mail = request.getParameter("mail");
        String comment = request.getParameter("comment");
        String sth = getServletConfig().getInitParameter("login");
        System.out.println(sth);
        ServletContext servletContext = getServletContext();

        Vector  <Feedback> feedbacks = (Vector)servletContext.getAttribute("feetbacks");
        if(feedbacks==null){
            feedbacks = new Vector<>();
            feedbacks.add(new Feedback(login, mail, comment));
        } else {
            feedbacks.add(new Feedback(login, mail, comment));
        }

        servletContext.setAttribute("feetbacks", feedbacks);
        PrintWriter out= response.getWriter();
        out.println(feedbacks);
        out.close();


    }
}
