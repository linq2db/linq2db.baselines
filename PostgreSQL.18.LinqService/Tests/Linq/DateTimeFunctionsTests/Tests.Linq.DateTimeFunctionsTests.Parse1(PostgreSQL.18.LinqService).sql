﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', d."DateTimeValue")
FROM
	"LinqDataTypes" d
WHERE
	Floor(Extract(day From d."DateTimeValue"))::Int > 0

