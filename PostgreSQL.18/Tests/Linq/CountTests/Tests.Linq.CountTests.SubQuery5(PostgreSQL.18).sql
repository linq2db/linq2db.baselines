-- PostgreSQL.18 PostgreSQL13

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" p1
		WHERE
			p1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

