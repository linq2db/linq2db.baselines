-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @EnumNullable Varchar2(6) -- String
SET     @EnumNullable = 'Value1'

SELECT
	COUNT(*)
FROM
	"ValueConversion" t
WHERE
	CASE
		WHEN t."EnumNullable" IS NOT NULL THEN To_NChar(t."EnumNullable")
		ELSE t."Enum"
	END = :EnumNullable

