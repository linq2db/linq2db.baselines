BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @text Text(3) -- String
SET     @text = '123'

SELECT
	c_1."ChildID"::text || ',' || Coalesce(:text, '')
FROM
	"Child" c_1
LIMIT 1

