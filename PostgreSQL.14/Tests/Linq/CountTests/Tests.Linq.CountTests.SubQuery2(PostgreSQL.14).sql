-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	CASE
		WHEN p."Value1" IS NULL THEN (
			SELECT
				COUNT(*) as "Count_1"
			FROM
				"Child" "a_Children"
			WHERE
				p."ParentID" = "a_Children"."ParentID"
		)
		ELSE (
			SELECT
				COUNT(*) as "Count_1"
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

