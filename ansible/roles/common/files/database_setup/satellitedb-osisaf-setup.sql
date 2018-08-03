CREATE TABLE osisaf_sic(
  id             int4,
  amsr2date        date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  arc_computer   varchar(16),
  ant_flg        smallint,
  ant_dt         timestamptz,
  ant_computer   varchar(16) );
ALTER TABLE osisaf_sic ADD PRIMARY KEY (id); 
CREATE SEQUENCE osisaf_sic_serial START 1 CYCLE; 

GRANT ALL ON TABLE osisaf_sic TO bifrostsat;
GRANT ALL ON SEQUENCE osisaf_sic_serial TO bifrostsat;