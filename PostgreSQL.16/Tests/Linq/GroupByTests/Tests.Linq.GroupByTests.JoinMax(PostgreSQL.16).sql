BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN (
			SELECT
				MAX(max_1."ChildID") as c1
			FROM
				"Child" max_1
			GROUP BY
				max_1."ParentID"
		) t1 ON ch."ChildID" = t1.c1

