BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN p."Value1" IS NULL THEN (
			SELECT
				COUNT(*)
			FROM
				"Child" "a_Children"
			WHERE
				p."ParentID" = "a_Children"."ParentID"
		)
		ELSE (
			SELECT
				COUNT(*)
			FROM
				"Child" "a_Children_1"
			WHERE
				p."ParentID" = "a_Children_1"."ParentID"
		)
	END
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

