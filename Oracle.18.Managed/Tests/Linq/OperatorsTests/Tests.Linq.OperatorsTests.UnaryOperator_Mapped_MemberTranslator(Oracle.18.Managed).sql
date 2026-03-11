-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 6

SELECT
	r."Id",
	r."Field",
	r."FieldN",
	r."FieldClass"
FROM
	"OperatorTable" r
WHERE
	r."Field" * 3 = :value AND r."FieldN" * 3 = :value AND
	r."FieldClass" * 3 = :value

