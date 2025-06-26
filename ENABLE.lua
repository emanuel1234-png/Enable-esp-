<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login ESP</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: #0f0f0f;
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background: #111;
      border: 3px solid;
      border-image: linear-gradient(45deg, red, orange, yellow, green, cyan, blue, violet) 1;
      padding: 30px;
      border-radius: 15px;
      text-align: center;
      animation: borderRGB 5s linear infinite;
      box-shadow: 0 0 20px rgba(255, 255, 255, 0.1);
    }

    .login-container h2 {
      color: white;
      margin-bottom: 20px;
    }

    .login-container input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: none;
      border-radius: 5px;
    }

    .login-container button {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      background-color: #00ffcc;
      color: #000;
      cursor: pointer;
      font-weight: bold;
    }

    .login-container button:hover {
      background-color: #00bfa6;
    }

    @keyframes borderRGB {
      0% { border-image-source: linear-gradient(0deg, red, orange, yellow, green, blue, indigo, violet); }
      50% { border-image-source: linear-gradient(180deg, violet, indigo, blue, green, yellow, orange, red); }
      100% { border-image-source: linear-gradient(360deg, red, orange, yellow, green, blue, indigo, violet); }
    }

    .floating-box {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background: #1a1a1a;
      padding: 20px;
      border-radius: 15px;
      text-align: center;
      box-shadow: 0 0 20px #0ff;
      z-index: 1000;
    }

    .floating-box img {
      width: 250px;
      border-radius: 10px;
      margin-bottom: 20px;
    }

    .floating-box .buttons button {
      margin: 5px;
      padding: 10px 20px;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      background: #00ffcc;
      color: #000;
      cursor: pointer;
    }

    .floating-box .buttons button:hover {
      background-color: #00bfa6;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    <input type="text" id="username" placeholder="Usuário" />
    <input type="password" id="password" placeholder="Senha" />
    <button onclick="validateLogin()">Entrar</button>
  </div>

  <div class="floating-box" id="floatingBox">
    <img src="https://i.imgur.com/ZRmwFZQ.jpg" alt="Sabe Muito" />
    <div class="buttons">
      <button onclick="enableESP()">ENABLE ESP</button>
      <button onclick="disableESP()">DISABLE ESP</button>
    </div>
  </div>

  <script>
    function validateLogin() {
      const user = document.getElementById("username").value.trim();
      const pass = document.getElementById("password").value.trim();

      if (user === "TIGGER" && pass === "BLACK") {
        document.querySelector(".login-container").style.display = "none";
        document.getElementById("floatingBox").style.display = "block";
      } else {
        alert("Usuário ou senha incorretos!");
      }
    }

    function enableESP() {
      alert("ESP Ativado!");
    }

    function disableESP() {
      alert("ESP Desativado!");
    }
  </script>
</body>
</html>
