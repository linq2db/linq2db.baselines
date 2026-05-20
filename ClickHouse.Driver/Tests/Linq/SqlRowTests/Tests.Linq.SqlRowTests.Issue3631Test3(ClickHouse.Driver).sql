-- ClickHouse.Driver ClickHouse

SELECT
	x.Id,
	x.Country,
	x.State
FROM
	Issue3631Table x
WHERE
	(x.Country, x.State) IN (
		SELECT
			t1.Item1,
			t1.Item2
		FROM
			VALUES('Item1 Nullable(String), Item2 Nullable(String)', ('US', 'CA'), ('US', 'NY')) t1
	)

