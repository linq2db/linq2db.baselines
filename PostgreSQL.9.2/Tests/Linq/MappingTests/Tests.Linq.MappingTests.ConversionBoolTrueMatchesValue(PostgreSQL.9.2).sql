-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Varchar(1) -- String
SET     @value = '+'

SELECT
	r."Id",
	r."Value"
FROM
	"BoolStringConversionTable" r
WHERE
	r."Value" = :value
ORDER BY
	r."Id"

