-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Female'

SELECT
	r."Id"
FROM
	"ConvertedGenderRow" r
WHERE
	r."Gender" = :Value

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Gender"
FROM
	"ConvertedGenderRow" t1

