-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Value Varchar(6) -- String
SET     @Value = 'Female'

SELECT
	r."Id"
FROM
	"ConvertedGenderRow" r
WHERE
	r."Gender" = :Value

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Gender"
FROM
	"ConvertedGenderRow" t1

