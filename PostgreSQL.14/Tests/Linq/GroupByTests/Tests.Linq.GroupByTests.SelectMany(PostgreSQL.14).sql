BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	(
		SELECT
			t1."ParentID" as "Key_1"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) g_1
		INNER JOIN "Child" ch ON g_1."Key_1" = ch."ParentID"

