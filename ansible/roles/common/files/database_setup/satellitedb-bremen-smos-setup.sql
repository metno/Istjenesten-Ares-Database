CREATE TABLE bremen_smos(
  id             int4,
  smosdate       date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  ant_flg        smallint,
  ant_dt         timestamptz);
ALTER TABLE bremen_smos ADD PRIMARY KEY (id); 
CREATE SEQUENCE bremen_smos_serial START 1 CYCLE; 

GRANT ALL ON TABLE bremen_smos TO bifrostsat;
GRANT ALL ON SEQUENCE bremen_smos_serial TO bifrostsat;