-- PostgreSQL.13 PostgreSQL12
DECLARE @EnumNullable Varchar(6) -- String
SET     @EnumNullable = 'Value1'

SELECT
	COUNT(*)
FROM
	"ValueConversion" t
WHERE
	CASE
		WHEN t."EnumNullable" IS NOT NULL THEN t."EnumNullable"
		ELSE t."Enum"
	END = :EnumNullable

