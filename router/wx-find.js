const express = require("express");
const pool = require("../pool");

const router = express.Router();

//推荐
router.get("/",(req,res)=>{
let r_sql = `SELECT pid,pic,tip,auther,avatar,good FROM poco_index_recommend WHERE good!=0 ORDER BY good DESC`;
pool.query(r_sql,[],(err,result)=>{
    if (err) throw err;
       res.send(result) 
    })
})


module.exports = router