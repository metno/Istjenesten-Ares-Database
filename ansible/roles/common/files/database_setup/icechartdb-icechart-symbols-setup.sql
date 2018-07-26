CREATE TABLE icechart_symbols(
    id               int4,
    type             int2,
    name             varchar(80),
    rotation         int2,
    value            varchar(16),
    datetime         timestamp,
    service          varchar(2),
    analyst          varchar(2),
    charttype        varchar(1) );
SELECT AddGeometryColumn('', 'icechart_symbols', 'location', 4326, 'POINT', 2); 
CREATE INDEX sidx_testsymb ON icechart_symbols USING GIST (location GIST_GEOMETRY_OPS); 
ALTER TABLE icechart_symbols ADD PRIMARY KEY (id); 

CREATE SEQUENCE icechart_symbols_serial START 1 CYCLE; 

GRANT ALL ON TABLE icechart_symbols TO bifrostanalyst;
GRANT ALL ON SEQUENCE icechart_symbols_serial TO bifrostanalyst;
