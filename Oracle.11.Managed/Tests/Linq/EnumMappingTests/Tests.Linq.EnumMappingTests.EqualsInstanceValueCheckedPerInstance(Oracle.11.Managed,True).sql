-- Oracle.11.Managed Oracle11
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Female'

SELECT
	r."Id"
FROM
	"ConvertedGenderRow" r
WHERE
	r."Gender" = :Value

