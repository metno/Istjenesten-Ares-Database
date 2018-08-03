CREATE TABLE s1_files(
    id            int4,
    filename      varchar(80),
    location      varchar(8),
    datetime      timestamp,
    size          bigint,
    delivery      varchar(8),
    serverdt      timestamp,
    downloaddt    timestamp,
    processdt     timestamp,
    procflg       smallint,
    archivedt     timestamp,
    archflg       smallint,
    deletedt      timestamp,
    delflg        smallint,
    polyanalysedt timestamp,
    polyflg       smallint,
    classifydt    timestamp,
    classflg      smallint,
    concdt        timestamp,
    concflg       smallint);
SELECT AddGeometryColumn('', 's1_files', 'coverage', 4326, 'POLYGON', 2);
CREATE INDEX sidx_s1coverage ON s1_files USING GIST (coverage
    GIST_GEOMETRY_OPS);
ALTER TABLE s1_files ADD PRIMARY KEY (id);
GRANT ALL ON s1_files TO bifrostsat;
CREATE SEQUENCE s1_serial START 1 CYCLE;
GRANT ALL ON s1_serial TO bifrostsat;