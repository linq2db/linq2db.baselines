﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	101,
	3
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"IntValue" = 4
WHERE
	"LinqDataTypes"."ID" = 101 AND
	"LinqDataTypes"."ID" IS NOT NULL AND
	"LinqDataTypes"."IntValue" = 3 AND
	"LinqDataTypes"."IntValue" IS NOT NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."IntValue" = 4

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

