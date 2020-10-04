BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t2.c1
FROM
	"Parent" cp
		INNER JOIN (
			SELECT
				t1."ParentID" + 1 as c1,
				t1."ParentID"
			FROM
				"Child" t1
		) t2 ON cp."ParentID" = t2."ParentID"
WHERE
	t2.c1 > 1

