BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	Coalesce(p."Value1", Cast(Floor(Cast(p."ParentID" as decimal) % 2) as Int))
FROM
	"Parent" p

