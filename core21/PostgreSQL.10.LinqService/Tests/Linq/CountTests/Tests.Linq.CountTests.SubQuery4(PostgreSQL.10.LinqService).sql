BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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

