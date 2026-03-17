-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @true_value Varchar -- String
SET     @true_value = 'Y'

SELECT
	t."Id",
	t."Value1",
	t."Value2",
	t."BoolValue"
FROM
	"ValueConversion" t
WHERE
	t."BoolValue" = :true_value

