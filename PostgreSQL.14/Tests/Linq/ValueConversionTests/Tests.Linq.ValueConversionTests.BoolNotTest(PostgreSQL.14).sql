-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @false_value Varchar -- String
SET     @false_value = 'N'

SELECT
	t."Id",
	t."Value1",
	t."Value2",
	t."BoolValue"
FROM
	"ValueConversion" t
WHERE
	t."BoolValue" = :false_value

