BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1 OR (p."ParentID" = 2 OR p."ParentID" = 3) AND (p."ParentID" = 3 OR p."ParentID" = 1)

