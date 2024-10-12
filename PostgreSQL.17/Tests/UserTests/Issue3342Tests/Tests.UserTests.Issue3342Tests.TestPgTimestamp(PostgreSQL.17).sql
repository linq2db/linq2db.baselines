BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS pgtimestamptest

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS pgtimestamptest
(
	id        Int       NOT NULL,
	updatedon TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

ALTER TABLE pgtimestamptest ALTER COLUMN updatedon TYPE timestamptz;

BeforeExecute
INSERT BULK pgtimestamptest(id, updatedon)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS pgtimestamptest

