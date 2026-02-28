-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."isValueAvailable",
	g_1."ParentID",
	g_1."Value_1",
	COUNT(*)
FROM
	(
		SELECT
			c_1."ParentID",
			(c_1."ChildID"::decimal % 2)::decimal = 0 as "isValueAvailable",
			NULL::Int as "Value_1"
		FROM
			"Child" c_1
	) g_1
WHERE
	g_1."isValueAvailable"
GROUP BY
	g_1."isValueAvailable",
	g_1."ParentID",
	g_1."Value_1"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

