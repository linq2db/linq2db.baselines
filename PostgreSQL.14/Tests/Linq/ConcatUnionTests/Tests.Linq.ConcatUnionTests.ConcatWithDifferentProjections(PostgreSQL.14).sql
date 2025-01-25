BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p1."ParentID",
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
UNION ALL
SELECT
	Coalesce(p2."Value1", 0),
	NULL::Int,
	NULL::Int
FROM
	"Parent" p2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

