-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

INSERT BULK pgtimestamptest(id, updatedon)

