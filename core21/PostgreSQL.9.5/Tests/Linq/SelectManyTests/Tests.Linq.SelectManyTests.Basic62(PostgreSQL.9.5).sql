BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	t2.c1
FROM
	"Parent" cp
		INNER JOIN LATERAL ( 
			SELECT 
				t1."ParentID" + cp."ParentID" as c1
			FROM
				"Child" t1
			WHERE
				cp."ParentID" = t1."ParentID"
		) t2 ON 1=1
WHERE
	t2.c1 > 1

