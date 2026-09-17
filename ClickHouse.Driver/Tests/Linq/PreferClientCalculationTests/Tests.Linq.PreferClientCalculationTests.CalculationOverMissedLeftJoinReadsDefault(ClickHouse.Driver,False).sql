-- ClickHouse.Driver ClickHouse
SELECT
	e.Id,
	Coalesce(j.Value1, 0) + 1,
	CASE
		WHEN Coalesce(j.Value1, 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce(j.Value1, 0) - 1),
	j.Date,
	CASE
		WHEN Coalesce(j.Date, toDateTime64('0001-01-01 00:00:00.0000000', 7)) > toDateTime64('2000-01-01 00:00:00.0000000', 7)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Date, toDateTime64('0001-01-01 00:00:00.0000000', 7)) < toDateTime64('2000-01-01 00:00:00.0000000', 7)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Date, toDateTime64('0001-01-01 00:00:00.0000000', 7)) > e.Date
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Date, toDateTime64('0001-01-01 00:00:00.0000000', 7)) <= e.Date
			THEN 'y'
		ELSE 'n'
	END
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value1,
	t1.Date
FROM
	MissedJoinEntity t1

