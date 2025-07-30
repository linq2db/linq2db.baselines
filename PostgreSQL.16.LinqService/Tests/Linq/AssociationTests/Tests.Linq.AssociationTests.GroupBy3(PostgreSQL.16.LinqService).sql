BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			Floor(Extract(year From "a_Types"."DateTimeValue"))::Int as "Key_1"
		FROM
			"Parent" g_1
				LEFT JOIN "LinqDataTypes" "a_Types" ON g_1."ParentID" = "a_Types"."ID"
	) g_2
GROUP BY
	g_2."Key_1"

