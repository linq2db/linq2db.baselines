BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
		INNER JOIN (
			SELECT
				max_1.c1
			FROM
				(
					SELECT
						Max(t1."ChildID") as c1
					FROM
						"Child" t1
					GROUP BY
						t1."ParentID"
				) max_1
		) t2 ON ch."ChildID" = t2.c1

