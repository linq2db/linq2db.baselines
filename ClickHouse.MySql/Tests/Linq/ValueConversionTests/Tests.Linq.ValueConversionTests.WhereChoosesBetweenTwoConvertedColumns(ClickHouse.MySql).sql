-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ValueConversion t
WHERE
	CASE
		WHEN t.EnumNullable IS NOT NULL THEN t.EnumNullable
		ELSE t.Enum
	END = 'Value1'

