-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_1."isValueAvailable",
	g_1."ParentID",
	g_1."Value_1",
	COUNT(*)
FROM
	(
		SELECT
			c_1."ParentID",
			CASE
				WHEN MOD(c_1."ChildID", 2) = 0 THEN 1
				ELSE 0
			END as "isValueAvailable",
			NULL as "Value_1"
		FROM
			"Child" c_1
	) g_1
WHERE
	g_1."isValueAvailable" = 1
GROUP BY
	g_1."isValueAvailable",
	g_1."ParentID",
	g_1."Value_1"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

