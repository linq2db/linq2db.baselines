-- Oracle.11.Managed Oracle11
SELECT
	g_2."Key_1",
	g_2."Doubled",
	g_2."InRange"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1",
			COUNT(*) as "Count_1",
			g_1."ParentID" * 2 as "Doubled",
			CASE
				WHEN g_1."ParentID" BETWEEN 2 AND 4 THEN 1
				ELSE 0
			END as "InRange"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2."Count_1" NOT BETWEEN 2 AND 3

