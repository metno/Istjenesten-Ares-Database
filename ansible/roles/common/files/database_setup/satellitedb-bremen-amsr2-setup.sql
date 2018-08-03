CREATE TABLE bremen_amsr2(
  id             int4,
  amsr2date      date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  ant_flg        smallint,
  ant_dt         timestamptz);
ALTER TABLE bremen_amsr2 ADD PRIMARY KEY (id); 
CREATE SEQUENCE bremen_amsr2_serial START 1 CYCLE; 

GRANT ALL ON TABLE bremen_amsr2 TO bifrostsat;
GRANT ALL ON SEQUENCE bremen_amsr2_serial TO bifrostsat;