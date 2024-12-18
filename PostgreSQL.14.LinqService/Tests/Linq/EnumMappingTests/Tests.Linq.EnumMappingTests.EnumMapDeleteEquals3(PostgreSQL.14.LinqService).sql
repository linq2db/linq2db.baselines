﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND
	r."ID" IS NOT NULL AND
	r."BigIntValue" = 12 AND
	r."BigIntValue" IS NOT NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

