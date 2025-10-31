BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ChildID" > :n
	) + 4
FROM
	"Parent" p

