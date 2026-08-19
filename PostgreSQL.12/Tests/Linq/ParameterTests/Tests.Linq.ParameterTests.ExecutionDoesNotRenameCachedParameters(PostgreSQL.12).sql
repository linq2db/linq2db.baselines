-- PostgreSQL.12 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id

