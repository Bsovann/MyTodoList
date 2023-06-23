package com.bondith.todolist.Control;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/add")
public class AddToListServlet extends HttpServlet {
    private ArrayList<String> listItems = new ArrayList<>();
    protected void doPost (HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        PrintWriter out = res.getWriter();
        String item = req.getParameter("newItem");
        listItems.add(item);

        HttpSession session = req.getSession();
        session.setAttribute("items", listItems);
        res.sendRedirect("index.jsp");
    }


}
