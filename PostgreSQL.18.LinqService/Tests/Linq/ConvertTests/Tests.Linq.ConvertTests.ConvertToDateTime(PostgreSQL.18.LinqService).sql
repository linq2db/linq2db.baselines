﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(Floor(Extract(year From p."DateTimeValue"))::Int || '-01-01 00:00:00')::TimeStamp
FROM
	"LinqDataTypes" p
WHERE
	Floor(Extract(day From (Floor(Extract(year From p."DateTimeValue"))::Int || '-01-01 00:00:00')::TimeStamp))::Int > 0

