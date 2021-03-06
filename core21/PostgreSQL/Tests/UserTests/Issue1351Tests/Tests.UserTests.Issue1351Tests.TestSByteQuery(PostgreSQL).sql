﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "T1351Model"
(
	"ID"           Int      NOT NULL,
	"TestField"    SmallInt NOT NULL,
	"TestNullable" SmallInt     NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	(t1."TestNullable" IS NULL OR t1."TestNullable" <> 1)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "T1351Model"

