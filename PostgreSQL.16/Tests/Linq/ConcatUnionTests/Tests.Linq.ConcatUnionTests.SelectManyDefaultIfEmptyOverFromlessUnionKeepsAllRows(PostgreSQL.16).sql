-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

