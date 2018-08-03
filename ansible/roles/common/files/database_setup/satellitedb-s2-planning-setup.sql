CREATE SEQUENCE s2plan_serial;
CREATE TABLE s2planning (
  id            int4 PRIMARY KEY DEFAULT nextval('s2plan_serial'),
  filename      varchar(128),
  datetime      timestamp,
  timeliness    varchar(32),
  mode          varchar(10),
  station       varchar(32)
);
SELECT AddGeometryColumn('', 's2planning', 'coverage', 4326, 'POLYGON', 2); 
GRANT ALL ON TABLE s2planning TO bifrostsat;
GRANT ALL ON SEQUENCE s2plan_serial TO bifrostsat;