-- PostgreSQL.11 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id

