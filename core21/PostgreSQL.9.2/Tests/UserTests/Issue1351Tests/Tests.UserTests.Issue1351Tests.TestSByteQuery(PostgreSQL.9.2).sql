BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "T1351Model"
(
	"ID"           Int      NOT NULL,
	"TestField"    SmallInt NOT NULL,
	"TestNullable" SmallInt     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	(t1."TestNullable" <> 1 OR t1."TestNullable" IS NULL)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "T1351Model"

