-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (1, 2)

-- PostgreSQL.18 PostgreSQL12
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (1, 2, 4)

