﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(year From p."DateTimeValue"))::Int
FROM
	"LinqDataTypes" p

