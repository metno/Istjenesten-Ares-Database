CREATE TABLE ucl_cryosat2(
  id             int4,
  cs2date        date,
  prodlen        smallint,
  arc_flg        smallint,
  arc_dt         timestamptz,
  cs2arcfn       varchar(32),
  ant_flg        smallint,
  ant_dt         timestamptz,
  cs2antfn       varchar(32));
ALTER TABLE ucl_cryosat2 ADD PRIMARY KEY (id); 
CREATE SEQUENCE ucl_cryosat2_serial START 1 CYCLE; 

GRANT ALL ON TABLE ucl_cryosat2 TO bifrostsat;
GRANT ALL ON SEQUENCE ucl_cryosat2_serial TO bifrostsat;