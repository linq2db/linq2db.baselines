-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN MOD(g_1."ChildID", 2) = 0 THEN g_1."ParentID"
				ELSE NULL
			END as "Key_1"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."Key_1"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

