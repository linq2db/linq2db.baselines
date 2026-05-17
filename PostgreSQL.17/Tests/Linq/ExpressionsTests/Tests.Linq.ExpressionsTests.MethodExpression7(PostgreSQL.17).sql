-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	) + :n
FROM
	"Parent" p

