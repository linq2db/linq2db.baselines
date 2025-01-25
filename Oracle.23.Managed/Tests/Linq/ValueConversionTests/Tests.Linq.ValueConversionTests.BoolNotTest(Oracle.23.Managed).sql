BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @false_value Varchar2 -- String
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

