-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			x.Key1 as Key1
		FROM
			FirstOptimizerData x
	) x_1

