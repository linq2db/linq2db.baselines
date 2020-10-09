BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	p_1.val
FROM
	( 
		SELECT 
			p."ParentID" as id, 
			True as val
		FROM
			"Parent" p
		UNION
		SELECT 
			ch."ParentID" as id, 
			False as val
		FROM
			"Child" ch
	) p_1

