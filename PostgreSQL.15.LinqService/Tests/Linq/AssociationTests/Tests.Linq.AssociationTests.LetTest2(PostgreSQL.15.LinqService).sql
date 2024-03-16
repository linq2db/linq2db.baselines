BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	pp."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "a_Children"
		WHERE
			pp."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" pp

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	pp."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "a_Children"
		WHERE
			pp."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" pp

