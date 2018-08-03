CREATE SEQUENCE s1plan_serial;
CREATE TABLE s1planning (
  id            int4 PRIMARY KEY DEFAULT nextval('s1plan_serial'),
  filename      varchar(128),
  datetime      timestamp,
  timeliness    varchar(6),
  mode          varchar(2),
  polarisation  varchar(2)
);
SELECT AddGeometryColumn('', 's1planning', 'coverage', 4326, 'POLYGON', 2); 
GRANT ALL ON TABLE s1planning TO bifrostsat;
GRANT ALL ON SEQUENCE s1plan_serial TO bifrostsat;