const express = require("express");
const pool = require("../pool");

const router = express.Router();

//推荐
router.get("/",(req,res)=>{
    let output={
       recommend:[],
       carousel:[]
    };
let r_sql = `SELECT pid,pic,tip,auther,avatar,good FROM poco_index_recommend WHERE good!=0 ORDER BY good DESC`;
pool.query(r_sql,[],(err,result)=>{
    if (err) throw err;
    output.recommend=result;
    
//轮播
let c_sql = `SELECT pid,pic,pic_info_title,pic_info FROM poco_index_carousel`;
    pool.query(c_sql,[],(err,result)=>{
        if (err) throw err;
       output.carousel=result;  
       res.send(output) 
    })
    })
})


module.exports = router