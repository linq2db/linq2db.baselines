BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.Value3
FROM
	SampleData t
WHERE
	t.Id % 2 = 0
UNION ALL
SELECT
	t_1.Id as Id,
	t_1.Value1 as Value1,
	t_1.Value2 as Value2,
	t_1.Value3 as Value3
FROM
	SampleData t_1
WHERE
	t_1.Id % 4 = 0

