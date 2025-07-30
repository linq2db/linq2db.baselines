BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @n Int32
SET     @n = 1

SELECT
	g_2."ParentID"
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" + 1 > :n
	) g_2
GROUP BY
	g_2."ParentID"

