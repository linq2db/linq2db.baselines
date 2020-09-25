BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(p."ParentID" IS NOT NULL OR p."Value1" IS NOT NULL)

