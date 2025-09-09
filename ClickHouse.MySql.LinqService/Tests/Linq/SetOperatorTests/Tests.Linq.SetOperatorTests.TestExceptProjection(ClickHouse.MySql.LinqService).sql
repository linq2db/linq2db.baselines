BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	r_3.Value_1
FROM
	(
		SELECT
			r.Id as Id,
			r.Value1 as Value_1
		FROM
			SampleData r
		WHERE
			r.Id % 2 = 0
		EXCEPT DISTINCT
		SELECT
			r_1.Id as Id,
			r_1.Value2 / 10 as Value_1
		FROM
			SampleData r_1
		WHERE
			r_1.Id % 4 = 0
		EXCEPT DISTINCT
		SELECT
			r_2.Id as Id,
			r_2.Value1 as Value_1
		FROM
			SampleData r_2
		WHERE
			r_2.Id % 6 = 0
	) r_3

