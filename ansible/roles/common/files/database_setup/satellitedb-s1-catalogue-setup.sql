CREATE TABLE s1_catalogue(
    id            int4,
    filename      varchar(80),
    datetime      timestamp,
    size          bigint,
    serverdt      timestamp,
    downloaddt    timestamp,
    downloadflg   smallint);
SELECT AddGeometryColumn('', 's1_catalogue', 'coverage', 4326, 'POLYGON', 2);
CREATE INDEX sidx_s1catcover ON s1_catalogue USING GIST (coverage);
ALTER TABLE s1_catalogue ADD PRIMARY KEY (id);
GRANT ALL ON s1_catalogue TO bifrostsat;
CREATE SEQUENCE s1_refno START 1 CYCLE;
GRANT ALL ON s1_refno TO bifrostsat;