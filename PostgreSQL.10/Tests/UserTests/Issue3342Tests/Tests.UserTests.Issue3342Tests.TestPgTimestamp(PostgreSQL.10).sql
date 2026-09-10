-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

INSERT BULK pgtimestamptest(id, updatedon)

