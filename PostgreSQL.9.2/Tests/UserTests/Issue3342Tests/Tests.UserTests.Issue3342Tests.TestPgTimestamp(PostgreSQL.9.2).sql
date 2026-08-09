-- PostgreSQL.9.2 PostgreSQL
ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

INSERT BULK pgtimestamptest(id, updatedon)

