BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT DISTINCT
	t2.Id,
	t2.Value1,
	t2.Value2,
	t2.Value3
FROM
	(
		SELECT
			t1.Id as Id,
			t1.Value1 as Value1,
			t1.Value2 as Value2,
			t1.Value3 as Value3
		FROM
			(
				SELECT
					t.Id as Id,
					t.Value1 as Value1,
					t.Value2 as Value2,
					t.Value3 as Value3
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
					t_1.Id % 2 = 0
			) t1
		INTERSECT DISTINCT
		SELECT
			t_2.Id as Id,
			t_2.Value1 as Value1,
			t_2.Value2 as Value2,
			t_2.Value3 as Value3
		FROM
			SampleData t_2
		WHERE
			t_2.Id % 4 = 0
	) t2

