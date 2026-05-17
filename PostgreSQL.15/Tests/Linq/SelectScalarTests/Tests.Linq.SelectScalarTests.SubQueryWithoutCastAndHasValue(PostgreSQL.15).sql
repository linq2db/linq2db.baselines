-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			r."Value1"
		FROM
			"Parent" r
		LIMIT 1
	) IS NOT NULL

