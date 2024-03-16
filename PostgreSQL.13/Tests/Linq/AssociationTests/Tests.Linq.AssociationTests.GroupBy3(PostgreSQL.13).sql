﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."Year_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from "a_Types"."DateTimeValue")) as int) as "Year_1"
		FROM
			"Parent" g_1
				LEFT JOIN "LinqDataTypes" "a_Types" ON g_1."ParentID" = "a_Types"."ID"
	) g_2
GROUP BY
	g_2."Year_1"

