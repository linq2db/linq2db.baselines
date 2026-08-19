-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (1, 2)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (1, 2, 4)

