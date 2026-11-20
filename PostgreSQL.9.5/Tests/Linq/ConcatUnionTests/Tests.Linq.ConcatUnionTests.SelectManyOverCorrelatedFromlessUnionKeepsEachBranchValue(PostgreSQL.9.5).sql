-- PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	x."X"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				p."Value1" as "X"
			UNION ALL
			SELECT
				7::Int as "X"
		) x ON 1=1

