-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (1, :n)

