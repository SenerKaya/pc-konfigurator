import jwt from 'jsonwebtoken'

// module.exports = {
export function validateRegister(req,res,next) {
        // min length
        if (!req.body.username || req.body.username.length <3) {
            return res.status(400).send({
                message: "Please enter a username with min. 3 Chars"
            })
        }
        // min chars
        if (!req.body.password || req.body.password.length < 6) {
            return res.status(400).send({
                message: "Please enter a password with min. 6 chars"
            })
        }
        // repeat pw match
        if (!req.body.password_repeat || req.body.password !=req.body.password_repeat) {
            return res.status(400).send({
                message: "Passwords must match"
            })
        }
        next();
    }
    // isLoggedIn: () => {
    //     return;
    // }
// }