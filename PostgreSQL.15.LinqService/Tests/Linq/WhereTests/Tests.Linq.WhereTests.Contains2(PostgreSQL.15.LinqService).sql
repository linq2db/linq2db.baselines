BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (2, 3)

