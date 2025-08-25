BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" > :n
	) + 2
FROM
	"Parent" p

