-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."Value1" <> 1 AND p."Value1" IS NOT NULL

