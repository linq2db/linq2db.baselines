﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(year From t."DateTimeValue"))::Int + 1
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(month From make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int + 1, 10, 1, 0, 0, 0)))::Int = 10

