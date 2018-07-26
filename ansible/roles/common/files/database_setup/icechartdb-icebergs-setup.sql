CREATE TABLE icebergs(
    id               int4,
    name             varchar(16),
    satellite        varchar(16),
    date             int4,
    time             int4,
    datetime         timestamp,
    service          varchar(2),
    analyst          varchar(2),
    charttype        varchar(1) );
SELECT AddGeometryColumn('', 'icebergs', 'polygon', 4326, 'POLYGON', 2); 
CREATE INDEX sidx_icebergs ON icebergs USING GIST (polygon GIST_GEOMETRY_OPS); 
ALTER TABLE icebergs ADD PRIMARY KEY (id); 

CREATE SEQUENCE icebergs_serial START 1 CYCLE; 

GRANT ALL ON TABLE icebergs TO bifrostanalyst;
GRANT ALL ON SEQUENCE icebergs_serial TO bifrostanalyst;