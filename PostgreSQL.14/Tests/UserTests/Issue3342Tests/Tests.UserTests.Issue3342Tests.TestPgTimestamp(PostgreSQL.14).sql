-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

INSERT BULK pgtimestamptest(id, updatedon)

