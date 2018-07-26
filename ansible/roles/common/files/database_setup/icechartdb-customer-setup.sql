CREATE TABLE customer ();
ALTER TABLE customer ADD COLUMN id serial PRIMARY KEY;
ALTER TABLE customer ADD COLUMN name text;
ALTER TABLE customer ADD COLUMN language text;
ALTER TABLE customer ADD COLUMN salutation text;
ALTER TABLE customer ADD COLUMN startdate date;
ALTER TABLE customer ADD COLUMN enddate date;
ALTER TABLE customer ADD COLUMN region text;
ALTER TABLE customer ADD COLUMN area text;
ALTER TABLE customer ADD COLUMN style text;
ALTER TABLE customer ADD COLUMN format text;
ALTER TABLE customer ADD COLUMN email text;
ALTER TABLE customer ADD COLUMN dow text;
ALTER TABLE customer ADD COLUMN lastchart date;

GRANT ALL ON TABLE customer TO bifrost_analyst;
