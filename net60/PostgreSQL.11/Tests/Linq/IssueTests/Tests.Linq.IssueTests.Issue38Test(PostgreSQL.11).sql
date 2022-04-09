BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			a."ParentID" = t1."ParentID" AND a."ChildID" = t1."ChildID"
	)
FROM
	"Child" a

