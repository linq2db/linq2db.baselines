BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2."ParentID" > 2

