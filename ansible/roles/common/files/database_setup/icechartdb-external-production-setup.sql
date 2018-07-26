CREATE TABLE external(
  id              int4,
  icechart_date   date,
  outputs_flg     smallint,
  outputs_dt      timestamptz,
  pvupload_flg    smallint,
  pvupload_dt     timestamptz,
  istupload_flg   smallint,
  istupload_dt    timestamptz,
  ftpupload_flg   smallint,
  ftpupload_dt    timestamptz,
  disseminate_flg smallint,
  disseminate_dt  timestamptz,
  archive_flg     smallint,
  archive_dt      timestamptz,
  region          varchar(16),
  computer        varchar(16),
  service         varchar(2) );
ALTER TABLE external ADD PRIMARY KEY (id); 

CREATE SEQUENCE external_serial START 1 CYCLE;

GRANT ALL ON TABLE external TO bifrostanalyst;
GRANT ALL ON SEQUENCE external_serial TO bifrostanalyst;