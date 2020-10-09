BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT 
	p1."ParentID", 
	p1."Value1", 
	t1."ParentID", 
	t1."Sum_1"
FROM
	"Parent" p1
		LEFT JOIN LATERAL ( 
			SELECT 
				p."ParentID", 
				Sum(p."ParentID") as "Sum_1"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = p1."ParentID" AND EXISTS(
					SELECT 
						*
					FROM
						"Child" ch
					WHERE
						ch."ParentID" = p."ParentID"
				)
			GROUP BY
				p."ParentID"
		) t1 ON 1=1

