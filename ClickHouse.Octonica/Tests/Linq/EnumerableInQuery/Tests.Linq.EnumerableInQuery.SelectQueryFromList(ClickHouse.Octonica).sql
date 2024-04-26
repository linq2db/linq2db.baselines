BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH CTE_1 AS
(
	SELECT
		1 as Id,
		11 as Value_1
	UNION ALL
	SELECT
		2 as Id,
		22 as Value_1
	UNION ALL
	SELECT
		3 as Id,
		33 as Value_1
	UNION ALL
	SELECT
		4 as Id,
		44 as Value_1
)
SELECT
	t1.Id,
	t1.Value_1
FROM
	CTE_1 t1

