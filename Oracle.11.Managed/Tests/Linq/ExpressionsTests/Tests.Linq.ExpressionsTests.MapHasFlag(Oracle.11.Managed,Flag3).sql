-- Oracle.11.Managed Oracle11
DECLARE @flag Int32
SET     @flag = 4

SELECT
	t."Id",
	t."Value",
	t."Flags"
FROM
	"MappingTestClass" t
WHERE
	BITAND(t."Flags", :flag) = :flag

