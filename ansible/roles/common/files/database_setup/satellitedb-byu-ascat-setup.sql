CREATE TABLE byu_ascat(
  id             int4,
  ascatdate      date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  ant_flg        smallint,
  ant_dt         timestamptz);
ALTER TABLE byu_ascat ADD PRIMARY KEY (id); 
CREATE SEQUENCE byu_ascat_serial START 1 CYCLE; 

GRANT ALL ON TABLE byu_ascat TO bifrostsat;
GRANT ALL ON SEQUENCE byu_ascat_serial TO bifrostsat;

