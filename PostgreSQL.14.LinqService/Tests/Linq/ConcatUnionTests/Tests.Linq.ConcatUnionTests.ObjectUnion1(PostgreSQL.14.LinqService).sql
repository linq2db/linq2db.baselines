BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p1."ParentID",
	p1."Value1"
FROM
	"Parent" p1
WHERE
	p1."ParentID" > 3
UNION
SELECT
	p2."ParentID",
	p2."Value1"
FROM
	"Parent" p2
WHERE
	p2."ParentID" <= 3

