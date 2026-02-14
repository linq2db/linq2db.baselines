-- PostgreSQL.13 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*) as "Count5"
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	) + :n
FROM
	"Parent" p

