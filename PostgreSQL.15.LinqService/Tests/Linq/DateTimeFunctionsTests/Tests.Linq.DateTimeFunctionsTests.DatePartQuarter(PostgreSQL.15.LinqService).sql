﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(quarter From t."DateTimeValue"))::Int
FROM
	"LinqDataTypes" t

