-- ClickHouse.MySql ClickHouse
SELECT
	e.Id,
	Coalesce(j.Value1, 0) + 1,
	CASE
		WHEN Coalesce(j.Value1, 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(Coalesce(j.Value1, 0) - 1),
	CASE
		WHEN j.Date IS NULL THEN 1
		ELSE toYear(j.Date)
	END,
	CASE
		WHEN j.Date IS NULL THEN 'n'
		WHEN j.Date > makeDateTime(2000, 1, 1, 0, 0, 0) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN j.Date IS NULL THEN 'y'
		WHEN j.Date < makeDateTime(2000, 1, 1, 0, 0, 0) THEN 'y'
		ELSE 'n'
	END
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Value1,
	t1.Date
FROM
	MissedJoinEntity t1

