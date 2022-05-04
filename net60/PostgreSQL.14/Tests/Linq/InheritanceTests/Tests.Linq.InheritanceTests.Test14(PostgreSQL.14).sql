BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" = :id
LIMIT 1

