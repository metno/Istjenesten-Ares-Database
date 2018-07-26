CREATE TABLE iceshelf(
    id               int4,
    satellite        varchar(16),
    datestr          int4,
    dateend          int4,
    datetime         timestamp,
    service          varchar(2),
    analyst          varchar(2),
    charttype        varchar(1) );
SELECT AddGeometryColumn('', 'iceshelf', 'polygon', 4326, 'POLYGON', 2); 
CREATE INDEX sidx_iceshelfs ON iceshelf USING GIST (polygon GIST_GEOMETRY_OPS); 
ALTER TABLE iceshelf ADD PRIMARY KEY (id); 

CREATE SEQUENCE iceshelf_serial START 1 CYCLE; 

GRANT ALL ON TABLE iceshelf TO bifrostanalyst;
GRANT ALL ON SEQUENCE iceshelf_serial TO bifrostanalyst;