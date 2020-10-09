BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Parent" p1
		WHERE
			p1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

