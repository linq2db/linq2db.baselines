-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		toInt32(1) as Id,
		toInt32(11) as Value_1
	UNION ALL
	SELECT
		toInt32(2) as Id,
		toInt32(22) as Value_1
	UNION ALL
	SELECT
		toInt32(3) as Id,
		toInt32(33) as Value_1
	UNION ALL
	SELECT
		toInt32(4) as Id,
		toInt32(44) as Value_1
)
SELECT
	t1.Id,
	t1.Value_1
FROM
	CTE_1 t1

