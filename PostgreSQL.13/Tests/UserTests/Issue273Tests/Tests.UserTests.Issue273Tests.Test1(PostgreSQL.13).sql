﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ID",
	x."BigIntValue"
FROM
	"LinqDataTypes" x
WHERE
	x."BigIntValue" IN (0, 1)

