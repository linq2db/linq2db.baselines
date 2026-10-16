-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Code
FROM
	(
		SELECT
			r.Id as Id,
			r.Code as Code
		FROM
			SharedConverterRowA r
		UNION DISTINCT
		SELECT
			r_1.Id as Id,
			r_1.Code as Code
		FROM
			SharedConverterRowB r_1
	) t1
ORDER BY
	t1.Id

