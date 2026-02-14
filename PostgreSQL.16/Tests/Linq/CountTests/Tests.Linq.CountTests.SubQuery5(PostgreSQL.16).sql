-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Parent" p1
		WHERE
			p1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

