BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."Value1" AND "a_Children"."Value1" IS NOT NULL
	)
FROM
	"Parent" p

