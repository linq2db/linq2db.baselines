BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(t1.EnumNullable, t1.Enum)
FROM
	ValueConversion t1

