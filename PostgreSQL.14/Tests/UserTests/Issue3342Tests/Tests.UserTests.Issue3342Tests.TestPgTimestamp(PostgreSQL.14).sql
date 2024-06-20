BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS pgtimestamptest

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS pgtimestamptest
(
	id        Int       NOT NULL,
	updatedon TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

BeforeExecute
INSERT BULK pgtimestamptest(id, updatedon)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS pgtimestamptest

