-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @true_value Varchar2 -- String
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

