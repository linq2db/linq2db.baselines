-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @flag Int32
SET     @flag = 7

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	BITAND(t."Flags", :flag) = :flag

