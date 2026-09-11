-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @flag Int32
SET     @flag = 1

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	BITAND(t."Flags", :flag) = :flag

