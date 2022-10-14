// import express
import express from "express";
  
// import function from controller
// import { showUsers, showUserById, createUser,  } from "../controllers/User.js";

import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'

// init express router
const router = express.Router();
  
import db from '../config/database.js'
import { validateRegister } from '../middleware/users.js'
import { v4 as uuidv4 } from 'uuid';

// /api/sign-up
// Create New user
router.post('/sign-up', validateRegister, (req,res,next) => {
    db.query(`SELECT * FROM users WHERE LOWER(username) = LOWER(${db.escape(req.body.username)})`, (err, results) => {             
        if(results.length) { //error
            // console.log(err);
            return res.status(409).send({
                message: 'This username is already in use'
            })
        } else {
            bcrypt.hash(req.body.password, 10, (err, hash) => {
                if(err){
                    return res.status(500).send({
                        message: err,
                    })
                } else {
                    db.query(`INSERT INTO users (id, username,password, registered) VALUES ('${uuidv4()}',${db.escape(req.body.username)}, '${hash}', NOW())`,
                    (err, results) => {
                        if(err) {
                            throw err;
                            return res.status(400).send({
                                message: err,
                            })
                        }
                        return res.status(201).send({
                            message: "Registered!",
                        })
                    }
                    )
                }
            })
        }
    });   
}
);

// /api/login
// Get All user
router.post('/login', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT * FROM users WHERE username = ${db.escape(req.body.username)}`,
    (err, result) => {
        console.log("result", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
        if(!result.length) {
            return res.status(400).send({
                message: `Username or password incorrect -`
            })
        }
        bcrypt.compare(req.body.password, result[0]['password'], (bErr, bResult) => {
            console.log("bResult", bResult)
            if(bErr) {
                throw bErr;
                return res.status(400).send({
                    message: "Username or password incorrect"
                })
            }
            if(bResult) {
                const token = jwt.sign({
                    username: result[0].username,
                    userId: result[0].id
                },
                "SECRETKEY",
                {expiresIn: "7d"});
                db.query(`UPDATE users SET last_login = now() WHERE id = '${result[0].id}'`)
                return res.status(200).send({
                    message: "Logged in!",
                    token,
                    user: result[0]
                })
            }
            return res.status(401).send({
                message:"Username or password incorrect!"
            })
        }
        )
    }
    )
});

// Get All configurations
router.get('/configuration', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT c.title as cpu, g.title as gpu, r.title as ram, m.title as mainboard, d.title as disk_storage, co.title, 
        co.configuration_description, co.price, co.configuration_id
        from configuration co join cpu_unit c on c.id = co.cpu_id 
        join gpu_unit g on g.id = co.gpu_id
        join ram r on r.id = co.ram_id
        join motherboard m on m.id = co.motherboard_id
        join disk_storage d on d.id = co.disk_storage_id;`,
    (err, result) => {
        console.log("result", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    config_arr: result
                })
        }
        )
    }
    )


// Get All configurations
router.get('/cpu', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT c.title as cpu from backend.cpu_unit c;`,
    (err, result) => {
        result = result.map(function(item) {
            return item['cpu'];
          });
          
        console.log("result cpu", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    result: result
                })
        }
        )
    }
    )
    
// Get All configurations
router.get('/gpu', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT g.title as gpu from backend.gpu_unit g;`,
    (err, result) => {
        result = result.map(function(item) {
            return item['gpu'];
          });

        console.log("result gpu", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    result: result
                })
        }
        )
    }
    )

// Get All configurations
router.get('/ram', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT r.title as ram from backend.ram r;`,
    (err, result) => {
        result = result.map(function(item) {
            return item['ram'];
          });

        console.log("result ram", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    result: result
                })
        }
        )
    }
    )

// Get All configurations
router.get('/disk_storage', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT ds.title as d from backend.disk_storage ds;`,
    (err, result) => {
        result = result.map(function(item) {
            return item['d'];
          });

        console.log("result disk_storage", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    result: result
                })
        }
        )
    }
    )

// Get All configurations
router.get('/motherboard', (req,res,next) => {
    console.log("req.body", req.body)
    db.query(`SELECT m.title as m from backend.motherboard m`,
    (err, result) => {
        result = result.map(function(item) {
            return item['m'];
          });

        console.log("result motherboard", result)
        if (err) {
            throw err;
            return res.status(400).send({
                message: err,
            })
        }
                return res.status(200).send({
                    message: "Configuration sent!",
                    result: result
                })
        }
        )
    }
    )
// /api/secret-route

// Get Single user
// router.get('/users/:id', showUserById);

  
  
  
// // Update user
// router.put('/users/:id', updateuser);
  
// // Delete user
// router.delete('/users/:id', deleteuser);
  
// export default router
export default router;