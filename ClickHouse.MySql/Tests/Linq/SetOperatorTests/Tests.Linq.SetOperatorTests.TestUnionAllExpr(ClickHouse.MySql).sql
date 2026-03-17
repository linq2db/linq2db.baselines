-- ClickHouse.MySql ClickHouse

SELECT
	u_1.Id,
	u_1.Value1,
	u_1.Value2,
	u_1.Value3
FROM
	SampleData s
		INNER JOIN (
			SELECT
				u.Id as Id,
				u.Value1 as Value1,
				u.Value2 as Value2,
				u.Value3 as Value3
			FROM
				SampleData u
			WHERE
				u.Id % 2 = 0
			UNION ALL
			SELECT
				t.Id as Id,
				t.Value1 as Value1,
				t.Value2 as Value2,
				t.Value3 as Value3
			FROM
				SampleData t
			WHERE
				t.Id % 4 = 0
		) u_1 ON u_1.Id = s.Id

