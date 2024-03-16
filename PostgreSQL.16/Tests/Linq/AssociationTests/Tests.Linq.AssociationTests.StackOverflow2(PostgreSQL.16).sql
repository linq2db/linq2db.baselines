BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	((
		SELECT
			Count(*)
		FROM
			"Parent" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."Value1"
	) <> 0 OR (
		SELECT
			Count(*)
		FROM
			"Parent" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."Value1"
	) IS NULL)

