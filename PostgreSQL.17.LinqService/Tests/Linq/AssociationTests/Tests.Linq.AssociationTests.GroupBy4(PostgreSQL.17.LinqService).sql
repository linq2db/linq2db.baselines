﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			Floor(Extract(year From g_1."DateTimeValue"))::Int as "Key_1"
		FROM
			"LinqDataTypes" g_1
	) g_2
GROUP BY
	g_2."Key_1"

