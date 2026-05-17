-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."ParentID" > 3
UNION ALL
SELECT
	NULL::Int,
	NULL::Int
FROM
	"Parent" p2
WHERE
	p2."ParentID" <= 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

