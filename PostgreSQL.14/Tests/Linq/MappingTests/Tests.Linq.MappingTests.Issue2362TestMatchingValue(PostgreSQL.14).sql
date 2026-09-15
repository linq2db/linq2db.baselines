-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @value Varchar(1) -- String
SET     @value = '+'

SELECT
	r."Id",
	r."Value"
FROM
	"Issue2362Table" r
WHERE
	r."Value" = :value
ORDER BY
	r."Id"

