﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(minute From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t

