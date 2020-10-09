BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."ParentID", 
	(
		SELECT 
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	t."ParentID", 
	(
		SELECT 
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

