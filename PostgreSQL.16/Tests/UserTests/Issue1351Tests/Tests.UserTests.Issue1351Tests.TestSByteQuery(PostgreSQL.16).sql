BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T1351Model"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "T1351Model"
(
	"ID"           Int      NOT NULL,
	"TestField"    SmallInt NOT NULL,
	"TestNullable" SmallInt     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestNullable" <> 1 OR t1."TestNullable" IS NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "T1351Model"

