BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	g_2."Count_1",
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			ch."ChildID" > 30 AND g_2."ParentID" = ch."ParentID"
	),
	g_2."Count_2"
FROM
	(
		SELECT
			Count(CASE
				WHEN g_1."ChildID" > 30 THEN 1
				ELSE NULL
			END) as "Count_1",
			Count(*) as "Count_2",
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2

