BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."Value1",
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."Value1" = 2 OR p."Value1" = 1

