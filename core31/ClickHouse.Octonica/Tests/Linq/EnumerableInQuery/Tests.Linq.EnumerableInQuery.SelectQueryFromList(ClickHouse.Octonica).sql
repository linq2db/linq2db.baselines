BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		t1.Id,
		t1.Value_1 as Value
	FROM
		(
			SELECT
				toInt32(1) as Id,
				toInt32(11) as Value_1
		) t1
	UNION ALL
	SELECT
		t2.Id as Id,
		t2.Value_1 as Value_1
	FROM
		(
			SELECT
				toInt32(2) as Id,
				toInt32(22) as Value_1
		) t2
	UNION ALL
	SELECT
		t3.Id as Id,
		t3.Value_1 as Value_1
	FROM
		(
			SELECT
				toInt32(3) as Id,
				toInt32(33) as Value_1
		) t3
	UNION ALL
	SELECT
		t4.Id as Id,
		t4.Value_1 as Value_1
	FROM
		(
			SELECT
				toInt32(4) as Id,
				toInt32(44) as Value_1
		) t4
)
SELECT
	t5.Id,
	t5.Value
FROM
	CTE_1 t5

