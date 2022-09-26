import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import router from "./routes/routes.js";
  

// flexible Port for production and local development
const PORT = process.env.PORT || 5000;

// init express
const app = express();
  
// use express json
app.use(express.json());

/*
// use cors für onlinepublikation
var corsOptions = {
    origin: 'https://frontend-pc-konfigurator.herokuapp.com',
    optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}
app.use(cors(corsOptions));
*/
app.use(cors());


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
  


// forward api requests to Router
app.use('/api', router)


app.get('/', function (req, res) {
     res.send('hello from backend')
   })

app.listen(PORT, () => console.log(`Server running at http://localhost:${PORT}`));