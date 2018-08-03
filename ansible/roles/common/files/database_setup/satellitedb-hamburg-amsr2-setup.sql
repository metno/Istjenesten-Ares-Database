CREATE TABLE hamburg_amsr2(
  id             int4,
  amsr2date      date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  ant_flg        smallint,
  ant_dt         timestamptz);
ALTER TABLE hamburg_amsr2 ADD PRIMARY KEY (id); 
CREATE SEQUENCE hamburg_amsr2_serial START 1 CYCLE; 

GRANT ALL ON TABLE hamburg_amsr2 TO bifrostsat;
GRANT ALL ON SEQUENCE hamburg_amsr2_serial TO bifrostsat;