State['app.css'] = {
  ["content-type"] = "text/css",
  body = [[
/* CSS Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(180deg, #87CEEB 0%, #98D8C8 100%);
            min-height: 100vh;
            overflow-x: hidden;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        h1 {
            color: #333;
            margin-bottom: 2rem;
            text-align: center;
            font-size: 2.5rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .marquee-container {
            width: 100%;
            height: 200px;
            background: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            position: relative;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .marquee-track {
            display: flex;
            position: absolute;
            animation: scroll 20s linear infinite;
            height: 100%;
            align-items: center;
        }

        @keyframes scroll {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-50%);
            }
        }

        .elephant {
            width: 150px;
            height: 150px;
            margin: 0 50px;
            position: relative;
            animation: walk 1s ease-in-out infinite;
        }

        @keyframes walk {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        /* SVG Elephant Styling */
        .elephant svg {
            width: 100%;
            height: 100%;
            filter: drop-shadow(3px 3px 2px rgba(0,0,0,0.2));
        }

        .elephant:nth-child(odd) svg {
            fill: #FF6B6B;
        }

        .elephant:nth-child(even) svg {
            fill: #4ECDC4;
        }

        .elephant:nth-child(3n) svg {
            fill: #FFE66D;
        }

        /* Ground decoration */
        .ground {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 30px;
            background: repeating-linear-gradient(
                90deg,
                #8FBC8F,
                #8FBC8F 20px,
                #90EE90 20px,
                #90EE90 40px
            );
        }

        /* Clouds */
        .cloud {
            position: absolute;
            background: white;
            border-radius: 100px;
            opacity: 0.7;
        }

        .cloud::before {
            content: '';
            position: absolute;
            background: white;
            border-radius: 100px;
        }

        .cloud1 {
            width: 100px;
            height: 40px;
            top: 20%;
            left: 10%;
            animation: drift 30s infinite;
        }

        .cloud1::before {
            width: 50px;
            height: 50px;
            top: -25px;
            left: 10px;
        }

        .cloud2 {
            width: 80px;
            height: 35px;
            top: 15%;
            right: 20%;
            animation: drift 25s infinite reverse;
        }

        .cloud2::before {
            width: 60px;
            height: 40px;
            top: -20px;
            right: 15px;
        }

        @keyframes drift {
            0%, 100% {
                transform: translateX(0);
            }
            50% {
                transform: translateX(30px);
            }
        }

  ]]
}
