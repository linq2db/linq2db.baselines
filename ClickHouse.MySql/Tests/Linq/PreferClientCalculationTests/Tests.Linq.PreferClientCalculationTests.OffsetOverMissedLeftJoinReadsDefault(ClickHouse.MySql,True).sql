-- ClickHouse.MySql ClickHouse
SELECT
	e.Id,
	j.Moment,
	e.Moment
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Moment
FROM
	MissedMomentEntity t1

-- ClickHouse.MySql ClickHouse
SELECT
	toYear(Coalesce(j.Moment, toDateTime64('1900-01-01 00:00:00.0000000', 7)))
FROM
	MissedMomentEntity e
		LEFT JOIN MissedMomentEntity j ON j.Id = e.Id + 1000

