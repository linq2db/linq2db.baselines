-- PostgreSQL.11 PostgreSQL
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Female'

SELECT
	r."Id"
FROM
	"ConvertedGenderRow" r
WHERE
	r."Gender" = :Value

