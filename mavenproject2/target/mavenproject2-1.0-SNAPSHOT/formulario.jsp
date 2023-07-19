<%-- 
    Document   : formulario
    Created on : 18-07-2023, 18:57:27
    Author     : Allison
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculadora de Interés Simple</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
    <style>
        .calculator {
            max-width: 400px;
            margin: 0 auto;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="calculator">
            <h1 class="text-center">Calculadora de Interés Simple</h1>
            <form method="post" action="calculadora" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="capital">Capital:</label>
                    <input type="text" class="form-control" name="capital" id="capital" required>
                    <small class="form-text text-danger" id="capital-error"></small>
                </div>

                <div class="form-group">
                    <label for="tasa">Tasa de interés anual:</label>
                    <input type="text" class="form-control" name="tasa" id="tasa" required>
                    <small class="form-text text-danger" id="tasa-error"></small>
                </div>

                <div class="form-group">
                    <label for="anios">Número de años:</label>
                    <input type="text" class="form-control" name="anios" id="anios" required>
                    <small class="form-text text-danger" id="anios-error"></small>
                </div>

                <button type="submit" class="btn btn-primary">Calcular</button>
            </form>
        </div>
    </div>

    <script>
        function validateForm() {
            var capitalInput = document.getElementById("capital");
            var tasaInput = document.getElementById("tasa");
            var aniosInput = document.getElementById("anios");

            var capital = parseFloat(capitalInput.value);
            var tasa = parseFloat(tasaInput.value);
            var anios = parseInt(aniosInput.value);

            var valid = true;

            if (isNaN(capital) || !isFinite(capital)) {
                capitalInput.classList.add("is-invalid");
                document.getElementById("capital-error").textContent = "Ingresa un número válido.";
                valid = false;
            } else {
                capitalInput.classList.remove("is-invalid");
                document.getElementById("capital-error").textContent = "";
            }

            if (isNaN(tasa) || !isFinite(tasa)) {
                tasaInput.classList.add("is-invalid");
                document.getElementById("tasa-error").textContent = "Ingresa un número válido.";
                valid = false;
            } else {
                tasaInput.classList.remove("is-invalid");
                document.getElementById("tasa-error").textContent = "";
            }

            if (isNaN(anios) || anios % 1 !== 0) {
                aniosInput.classList.add("is-invalid");
                document.getElementById("anios-error").textContent = "Ingresa un número entero válido.";
                valid = false;
            } else {
                aniosInput.classList.remove("is-invalid");
                document.getElementById("anios-error").textContent = "";
            }

            return valid;
        }
    </script>
</body>
</html>
