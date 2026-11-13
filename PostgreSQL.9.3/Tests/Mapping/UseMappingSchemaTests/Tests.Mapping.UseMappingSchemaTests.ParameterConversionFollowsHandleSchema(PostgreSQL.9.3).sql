-- PostgreSQL.9.3 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID"::BigInt = :id

