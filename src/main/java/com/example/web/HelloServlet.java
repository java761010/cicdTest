package com.example.web;

import java.io.IOException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/hello", "/health"})
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        if ("/health".equals(request.getServletPath())) {
            response.setContentType("text/plain;charset=UTF-8");
            response.getWriter().println("OK");
            return;
        }
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().println("<!doctype html><html lang='ko'><head><meta charset='UTF-8'>"
                + "<title>Hello CI/CD</title></head><body>"
                + "<h1>Hello CI/CD</h1><p>Java 21 + Maven + Jakarta Servlet 6</p>"
                + "<p>Windows Jenkins → Linux Tomcat deployment</p>"
                + "</body></html>");
    }
}
