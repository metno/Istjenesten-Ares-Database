CREATE TABLE metarea_line(
  id               int4,
  datetime         timestamp,
  service          varchar(2),
  analyst          varchar(2),
  charttype        varchar(1) );
SELECT AddGeometryColumn('', 'metarea_line', 'line', 4326, 'LINESTRING', 2); 
CREATE INDEX sidx_metline ON metarea_line USING GIST (line GIST_GEOMETRY_OPS); 
ALTER TABLE metarea_line ADD PRIMARY KEY (id); 
CREATE SEQUENCE metarea_line_serial START 1 CYCLE; 

GRANT ALL ON TABLE metarea_line TO bifrostanalyst;
GRANT ALL ON SEQUENCE metarea_line_serial TO bifrostanalyst;