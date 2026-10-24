-- ClickHouse.MySql ClickHouse
INSERT INTO OptionalEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	NULL,
	toDateTime64('2026-01-03 13:30:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
INSERT INTO OptionalEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	NULL
)

-- ClickHouse.MySql ClickHouse
INSERT INTO OptionalEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	3,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-03 13:30:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	CASE
		WHEN r.StartedOn IS NULL THEN NULL
		ELSE r.FinishedOn
	END,
	CASE
		WHEN r.FinishedOn IS NULL THEN NULL
		ELSE r.StartedOn
	END
FROM
	OptionalEventRow r
ORDER BY
	r.Id

