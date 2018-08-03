CREATE TABLE modis_files(
    id            int4,
    satellite     varchar(3),
    datetime      timestamp,
    serverdt      timestamp,
    areaflg       smallint,
    threshold     real,
    filename      varchar(80),
    size          int,
    qkm           smallint,
    hkm           smallint,
    km1           smallint,
    cld           smallint,
    processdt     timestamp,
    procflg       smallint,
    clouddt       timestamp,
    cldflg        smallint,
    archivedt     timestamp,
    archflg       smallint,
    deletedt      timestamp,
    delflg        smallint,
    delprocessdt  timestamp,
    delprocflg    smallint);
SELECT AddGeometryColumn('', 'modis_files', 'coverage', 4326, 'POLYGON', 2);
CREATE INDEX sidx_modiscoverage ON modis_files USING GIST (coverage
    GIST_GEOMETRY_OPS);
ALTER TABLE modis_files ADD PRIMARY KEY (id);
GRANT ALL ON modis_files TO bifrostsat;
CREATE SEQUENCE modis_serial START 1 CYCLE;
GRANT ALL ON modis_serial TO bifrostsat;