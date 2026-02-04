-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			x.Key1 as Key1
		FROM
			FirstOptimizerData x
		GROUP BY
			x.Key1
	) x_1

