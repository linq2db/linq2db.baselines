-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 2

SELECT
	r."Id",
	r."Field",
	r."FieldN",
	r."FieldClass"
FROM
	"OperatorTable" r
WHERE
	r."Field" = :value AND r."FieldN" = :value AND r."FieldClass" = :value

