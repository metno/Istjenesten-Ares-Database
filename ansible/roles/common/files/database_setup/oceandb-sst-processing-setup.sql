CREATE TABLE sst_processing(
  id             int4,
  sstdate        date,
  arc_flg        smallint,
  arc_dt         timestamptz,
  arc_computer   varchar(16),
  ant_flg        smallint,
  ant_dt         timestamptz,
  ant_computer   varchar(16) );
ALTER TABLE sst_processing ADD PRIMARY KEY (id); 
CREATE SEQUENCE sst_processing_serial START 1 CYCLE; 

GRANT ALL ON TABLE sst_processing TO bifrostadmin;
GRANT ALL ON SEQUENCE sst_processing_serial TO bifrostadmin;