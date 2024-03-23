BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", Cast(Floor(Cast(p."ParentID" as decimal) % 2) as Int)),
	p."Value1"
FROM
	"Parent" p

