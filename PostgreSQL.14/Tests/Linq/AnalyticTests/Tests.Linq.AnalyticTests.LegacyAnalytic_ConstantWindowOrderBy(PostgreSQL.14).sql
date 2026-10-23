-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY p."ParentID"),
	ROW_NUMBER() OVER (ORDER BY p."ParentID")
FROM
	"Parent" p

