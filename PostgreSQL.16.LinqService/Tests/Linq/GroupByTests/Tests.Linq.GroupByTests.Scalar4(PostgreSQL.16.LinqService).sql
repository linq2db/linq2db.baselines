BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			Min(ch."ChildID")
		FROM
			"Child" ch
		WHERE
			g_2."ParentID" = ch."ParentID" AND ch."ParentID" > 2
	)
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
	(
		SELECT
			Min(ch_1."ChildID")
		FROM
			"Child" ch_1
		WHERE
			g_2."ParentID" = ch_1."ParentID" AND ch_1."ParentID" > 2
	) IS NOT NULL

