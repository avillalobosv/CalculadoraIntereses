/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.modelo;

/**
 *
 * @author Allison
 */
public class CalculadoraInteres {
    public static double calcularInteresSimple(double capital, double tasa, int anios) {
        return capital * (tasa / 100) * anios;
    }
}
