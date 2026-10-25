-- PostgreSQL.12 PostgreSQL12
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID"::BigInt = :id

