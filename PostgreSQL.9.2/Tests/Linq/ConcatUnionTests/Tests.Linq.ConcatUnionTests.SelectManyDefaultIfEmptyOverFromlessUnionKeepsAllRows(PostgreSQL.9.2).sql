-- PostgreSQL.9.2 PostgreSQL
SELECT
	p."ParentID",
	x."X"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				1::Int as "X"
			UNION ALL
			SELECT
				2::Int as "X"
		) x ON 1=1

