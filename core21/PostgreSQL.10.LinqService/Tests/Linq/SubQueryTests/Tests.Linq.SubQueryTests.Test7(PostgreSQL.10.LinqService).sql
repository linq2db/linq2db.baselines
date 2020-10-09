BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"GrandChild" g_1
		WHERE
			g_1."ChildID" = c_1."ChildID"
	)
FROM
	"Child" c_1

