-- ClickHouse.Octonica ClickHouse
SELECT
	e.Id,
	Coalesce(j.Value1, 0) + 1,
	bitOr(Coalesce(j.Value1, 0), 1),
	CASE
		WHEN Coalesce(j.Value1, 0) < 5 THEN 'a'
		ELSE 'b'
	END,
	CASE
		WHEN Coalesce(j.Value1, 0) IN (0) THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (Coalesce(j.Value1, 0), 5) THEN 'y'
		ELSE 'n'
	END,
	negate(Coalesce(j.Value1, 0)) + 1,
	CASE
		WHEN NOT Coalesce(j.Flag, false) THEN 't'
		ELSE 'f'
	END,
	CASE
		WHEN NOT (Coalesce(j.Flag, false) OR e.Id < 0) THEN 't'
		ELSE 'f'
	END,
	Abs(Coalesce(j.Value1, 0)) + 1,
	concat('x', toString(Coalesce(j.Value1, 0))),
	ABS(Coalesce(j.Value1, 0)) + 1,
	toFloat64(Coalesce(j.Value1, 0)) + toFloat64(1),
	CASE
		WHEN e.Id > 0 THEN Coalesce(j.Value1, 0)
		ELSE 5
	END + 1,
	Coalesce(j.Value1, 0) + 1,
	Coalesce(j.Value1, 0) + 1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Value1,
	t1.Date,
	t1.Flag,
	t1.Name
FROM
	MissedJoinEntity t1

-- ClickHouse.Octonica ClickHouse
SELECT
	j.Value1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

