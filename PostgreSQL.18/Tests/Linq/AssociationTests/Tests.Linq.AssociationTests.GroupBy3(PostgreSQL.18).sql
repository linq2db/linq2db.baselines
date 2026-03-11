-- PostgreSQL.18 PostgreSQL

SELECT DISTINCT
	Floor(Extract(year From "a_Types"."DateTimeValue"))::Int
FROM
	"Parent" g_1
		LEFT JOIN "LinqDataTypes" "a_Types" ON g_1."ParentID" = "a_Types"."ID"

