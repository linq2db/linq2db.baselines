-- PostgreSQL.9.5 PostgreSQL
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Female'

SELECT
	r."Id"
FROM
	"ConvertedGenderRow" r
WHERE
	r."Gender" = :Value

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Gender"
FROM
	"ConvertedGenderRow" t1

