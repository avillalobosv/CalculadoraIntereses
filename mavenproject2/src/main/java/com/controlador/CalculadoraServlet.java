/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;

import com.modelo.CalculadoraInteres;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculadora")
public class CalculadoraServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los valores ingresados por el usuario desde el formulario
        double capital = Double.parseDouble(request.getParameter("capital"));
        double tasa = Double.parseDouble(request.getParameter("tasa"));
        int anios = Integer.parseInt(request.getParameter("anios"));

        // Calcular el interés simple utilizando la clase CalculadoraInteres
        double interesSimple = CalculadoraInteres.calcularInteresSimple(capital, tasa, anios);

        // Establecer el resultado como atributo en la solicitud
        request.setAttribute("interesSimple", interesSimple);

        // Redirigir a la vista (JSP) para mostrar el resultado
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}

