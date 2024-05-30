BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 10

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id
LIMIT 1

