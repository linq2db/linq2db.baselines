-- PostgreSQL.9.2 PostgreSQL
SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT DISTINCT ON (-t1."ParentID")
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
		ORDER BY
			-t1."ParentID",
			t1."ParentID"
	) t2
ORDER BY
	t2."ParentID"
LIMIT 1

