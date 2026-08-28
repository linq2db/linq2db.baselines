-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	t2.c1,
	t2.Source,
	t2.Duration,
	t2.Source_1,
	t2.Duration_1,
	t2.Source_2,
	t2.Duration_2
FROM
	(
		SELECT
			t1.Source = t1.c1 as c1,
			t1.Source as Source,
			t1.Duration as Duration,
			t1.Source as Source_1,
			t1.Duration_1 as Duration_1,
			toInt32(NULL) as Source_2,
			toInt64(NULL) as Duration_2
		FROM
			(
				SELECT
					toInt32(1) as Source,
					toInt32(1) as c1,
					r.Budget as Duration,
					NULL as Duration_1
				FROM
					BudgetedTaskRow r
				UNION ALL
				SELECT
					toInt32(2) as Source,
					toInt32(1) as c1,
					toInt64(NULL) as Duration,
					intDiv(toUnixTimestamp64Nano(r_1.FinishedOn) - toUnixTimestamp64Nano(r_1.StartedOn), toInt64(100)) as Duration_1
				FROM
					BudgetedTaskRow r_1
			) t1
		UNION ALL
		SELECT
			toBool(NULL) as c1,
			toInt32(NULL) as Source,
			toInt64(NULL) as Duration,
			toInt32(NULL) as Source_1,
			NULL as Duration_1,
			toInt32(3) as Source_2,
			r_2.Budget as Duration_2
		FROM
			BudgetedTaskRow r_2
	) t2
ORDER BY
	CASE
		WHEN t2.c1 IS NOT NULL THEN CASE
			WHEN t2.c1 THEN t2.Source
			ELSE t2.Source_1
		END
		ELSE t2.Source_2
	END

