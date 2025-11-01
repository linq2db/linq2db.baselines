-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" > :n
	) + 4
FROM
	"Parent" p

