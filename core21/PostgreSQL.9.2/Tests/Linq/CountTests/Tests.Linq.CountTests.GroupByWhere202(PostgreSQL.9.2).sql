BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	g_1."ParentID"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" ch
				WHERE
					t1."ParentID" = ch."ParentID" AND ch."ChildID" > 20
			) as cnt,
			(
				SELECT
					Count(*)
				FROM
					"Child" ch_1
				WHERE
					t1."ParentID" = ch_1."ParentID" AND ch_1."ChildID" = 20
			) as ex,
			t1."ParentID"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) g_1
WHERE
	(g_1.cnt > 2 OR g_1.ex > 2)

