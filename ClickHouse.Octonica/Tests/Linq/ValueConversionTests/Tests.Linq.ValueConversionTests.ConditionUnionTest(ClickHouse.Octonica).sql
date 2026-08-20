-- ClickHouse.Octonica ClickHouse
SELECT
	t1.EnumNullable,
	t1.EnumNullable as Converted_1,
	t1.Enum
FROM
	ValueConversion t1
UNION ALL
SELECT
	t1_1.EnumNullable as EnumNullable,
	t1_1.EnumNullable as Converted_1,
	t1_1.Enum as Enum
FROM
	ValueConversion t1_1

