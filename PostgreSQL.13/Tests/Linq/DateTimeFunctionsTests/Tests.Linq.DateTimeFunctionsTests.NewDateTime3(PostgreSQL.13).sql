﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	make_timestamp(Floor(Extract(year From t."DateTimeValue"))::Int, 10, 1, 20, 35, 44::Float)
FROM
	"LinqDataTypes" t

