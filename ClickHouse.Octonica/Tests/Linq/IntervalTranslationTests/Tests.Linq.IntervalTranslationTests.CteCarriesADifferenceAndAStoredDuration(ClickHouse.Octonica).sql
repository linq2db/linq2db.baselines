-- ClickHouse.Octonica ClickHouse
INSERT INTO BudgetedTaskRow
(
	Id,
	StartedOn,
	FinishedOn,
	Budget
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-01 11:00:00.0000000', 7),
	toInt64(10800)
)

-- ClickHouse.Octonica ClickHouse
WITH CTE_1 AS
(
	SELECT
		r.Id as Id,
		intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) as Taken,
		r.Budget as Budget
	FROM
		BudgetedTaskRow r
)
SELECT
	t1.Id,
	t1.Taken,
	t1.Budget
FROM
	CTE_1 t1
ORDER BY
	t1.Id
LIMIT 2

