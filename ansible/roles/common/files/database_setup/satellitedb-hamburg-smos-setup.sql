CREATE TABLE hamburg_smos(
  id             int4,
  smosdate       date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  ant_flg        smallint,
  ant_dt         timestamptz);
ALTER TABLE hamburg_smos ADD PRIMARY KEY (id); 
CREATE SEQUENCE hamburg_smos_serial START 1 CYCLE; 

GRANT ALL ON TABLE hamburg_smos TO bifrostsat;
GRANT ALL ON SEQUENCE hamburg_smos_serial TO bifrostsat;