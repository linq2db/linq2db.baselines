﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	(Floor(Extract(year From t."DateTimeValue"))::Int || '-01-01')::Date
FROM
	"LinqDataTypes" t

