BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

