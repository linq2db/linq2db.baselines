BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t2.Converted1,
	t2.Converted2,
	t2.Converted1 as Converted1_1
FROM
	(
		SELECT
			Coalesce(t1.EnumNullable, t1.Enum) as Converted1,
			t1.Value1 as Converted2
		FROM
			ValueConversion t1
	) t2
UNION DISTINCT
SELECT
	Coalesce(t1_1.EnumNullable, t1_1.Enum) as Converted1,
	t1_1.Value1 as Converted2,
	Coalesce(t1_1.EnumNullable, t1_1.Enum) as Converted1_1
FROM
	ValueConversion t1_1

