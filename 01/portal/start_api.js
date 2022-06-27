const express = require("express");
const router = express.Router();
const sql_command = require("../../api/utils/sql_command");
const {
  jsonFormatSuccess,
//   jsonFormatError,
} = require("../../api/utils/format_json");

  router.get("/get-namepeople", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM PEOPLE WHERE ID_LOGIN=0659856589`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.get("/get-addpeople", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM ADD_PEOPLE WHERE ID_PEOPLE=1`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.get("/get-truckdata", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM TRUCK WHERE ID_TRUCK=1`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.get("/get-licence", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM LICENCEPLATE WHERE ID_TRUCK=1`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.get("/get-driver", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM DRIVER WHERE ID_TRUCK=1`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.get("/get-porter", async (req, res, next) => {
    
    try {
      let results = await sql_command.query(`SELECT * FROM PORTER WHERE ID_TRUCK=1`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });


  router.get("/get-people/:idedit", async (req, res, next) => {
    console.log(req.params.idedit)
    try {
      let results = await sql_command.query(`SELECT * FROM PEOPLE WHERE ID_LOGIN=${req.params.idedit};`);
      return res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.post("/insert-register-people",  async (req, res, next) => {
    // console.log(req)
    const body = req.body
    console.log(body)
    try {
      let results = await sql_command.query(`INSERT INTO REGISTER_PEOPLE( ID_LOGIN,PREFIX,FIRSTNAME,LASTNAME,TEL_PEOPLE,BUILDING_TYPE,ADD_PEOPLE,SUBAREA_PEOPLE,AREA_PEOPLE,PROVINCE_PEOPLE,POSTALCODE_PEOPLE)
      VALUES('${body.idlogin}','${body.prefix}','${body.fristname}','${body.lastname}','${body.phoneNumber}','${body.buildtype}','${body.addpeople}','${body.subarea}','${body.area}','${body.province}','${body.postalcode}')`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.post("/insert-register-truck",  async (req, res, next) => {
    // console.log(req)
    const body = req.body
    console.log(body)
    try {
      let results = await sql_command.query(`INSERT INTO REGISTER_TRUCK( ID_LOGIN,NAMETRUCK,LICENCE_TRUCK,ALLOWEDBY_TRUCK,ADD_TRUCK,SUBAREA_TRUCK,AREA_TRUCK,PROVINCE_TRUCK,POSTALCODE_TRUCK,TEL_TRUCK,TRUCK_LICENCE,NAME_DRIVER,TEL_DRIVER,NAME_PORTER,TEL_PORTER)
      VALUES('${body.idlogin}','${body.nametruck}','${body.license}','${body.allowed}','${body.addtruck}','${body.subarea}','${body.area}','${body.province}','${body.postalcode}','${body.teltruck}','${body.trucklicence}','${body.namedriver}','${body.teldriver}','${body.nameporter}','${body.telporter}' )`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.post("/insert-register-site",  async (req, res, next) => {
    // console.log(req)
    const body = req.body
    console.log(body)
    try {
      let results = await sql_command.query(`INSERT INTO REGISTER_SITE( ID_LOGIN,NAME_SITE,LICENCE_SITE,ALLOWEDBY_SITE,TEL_SITE,ADD_SITE,SUBAREA_SITE,AREA_SITE,PROVINCE_SITE,POSTALCODE_SITE)
      VALUES('${body.idlogin}','${body.namesewage}','${body.license}','${body.allowed}','${body.telsite}','${body.addsite}','${body.subarea}','${body.area}','${body.province}','${body.postalcode}' )`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.post("/insert-record-site",  async (req, res, next) => {
    // console.log(req)
    const body = req.body
    console.log(body)
    try {
      let results = await sql_command.query(`INSERT INTO RECORD_SITE( ID_ SITE,NAME_SITE,LICENCE_SITE,ALLOWEDBY_SITE,TEL_SITE,ADD_SITE,SUBAREA_SITE,AREA_SITE,PROVINCE_SITE,POSTALCODE_SITE,
        ID_TRUCK,NAMETRUCK,LICENCE_TRUCK,ALLOWEDBY_TRUCK,ADD_TRUCK,SUBAREA_TRUCK,AREA_TRUCK,PROVINCE_TRUCK,POSTALCODE_TRUCK,TEL_TRUCK,TRUCK_LICENCE,NAME_DRIVER,TEL_DRIVER,NAME_PORTER,TEL_PORTER,
        DATE_SITE,TIMEIN_SITE,TIMEOUT_SITE,TOTAL_SITE,NAME_PROPLE)
      VALUES('${body.idlogin}','${body.nametruck}','${body.license}','${body.allowed}','${body.addtruck}','${body.subarea}','${body.area}','${body.province}','${body.postalcode}','${body.teltruck}','${body.trucklicence}','${body.namedriver}','${body.teldriver}','${body.nameporter}','${body.telporter}' )`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });

  router.post("/insert-record-truck",  async (req, res, next) => {
    // console.log(req)
    const body = req.body
    console.log(body)
    try {
      let results = await sql_command.query(`INSERT INTO RECORD_TRUCK( ID_LOGIN,NAMETRUCK,LICENCE_TRUCK,ALLOWEDBY_TRUCK,ADD_TRUCK,SUBAREA_TRUCK,AREA_TRUCK,PROVINCE_TRUCK,POSTALCODE_TRUCK,TEL_TRUCK,TRUCK_LICENCE,NAME_DRIVER,TEL_DRIVER,NAME_PORTER,TEL_PORTER)
      VALUES('${body.idlogin}','${body.nametruck}','${body.license}','${body.allowed}','${body.addtruck}','${body.subarea}','${body.area}','${body.province}','${body.postalcode}','${body.teltruck}','${body.trucklicence}','${body.namedriver}','${body.teldriver}','${body.nameporter}','${body.telporter}' )`);
      res.json(jsonFormatSuccess(results));
    } catch (error) {
      next(error);
    }
  });



  
  module.exports = router;