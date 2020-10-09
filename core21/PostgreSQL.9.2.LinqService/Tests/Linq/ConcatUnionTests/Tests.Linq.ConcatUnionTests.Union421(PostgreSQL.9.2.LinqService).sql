﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	p_2.val
FROM
	( 
		SELECT 
			p."ParentID" as id, 
			True as val
		FROM
			"Parent" p
		UNION
		SELECT 
			p_1."ParentID" as id, 
			False as val
		FROM
			"Parent" p_1
		UNION
		SELECT 
			ch."ParentID" as id, 
			False as val
		FROM
			"Child" ch
	) p_2

