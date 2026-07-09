-- PostgreSQL.13 PostgreSQL13

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

INSERT BULK pgtimestamptest(id, updatedon)

