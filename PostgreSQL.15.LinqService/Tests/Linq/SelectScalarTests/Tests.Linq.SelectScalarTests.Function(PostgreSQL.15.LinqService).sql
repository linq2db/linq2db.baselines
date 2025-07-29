BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @text Text(3) -- String
SET     @text = '123'

SELECT
	c_1."ChildID" || ',' || :text
FROM
	"Child" c_1
LIMIT 1

