CREATE TABLE nic_icebergs(
    id               int4,
    iceberg          varchar(20),
    length_nm        int2,
    width_nm         int2,
    latitude         float4,
    longitude        float4,
    remarks          varchar(80),
    lastupdate       date,
    filedate         date);
SELECT AddGeometryColumn('', 'nic_icebergs', 'location', 4326, 'POINT', 2); 
CREATE INDEX sidx_nicbergs ON nic_icebergs USING GIST (location GIST_GEOMETRY_OPS); 
ALTER TABLE nic_icebergs ADD PRIMARY KEY (id); 

CREATE SEQUENCE nic_icebergs_serial START 1 CYCLE; 

GRANT ALL ON TABLE nic_icebergs TO bifrostanalyst;
GRANT ALL ON SEQUENCE nic_icebergs_serial TO bifrostanalyst;