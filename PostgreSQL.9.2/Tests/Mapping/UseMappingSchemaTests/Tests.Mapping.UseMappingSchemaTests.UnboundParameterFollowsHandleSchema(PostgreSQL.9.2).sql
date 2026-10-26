-- PostgreSQL.9.2 PostgreSQL
DECLARE @token Varchar(2) -- String
SET     @token = 'Bx'

SELECT
	:token
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

