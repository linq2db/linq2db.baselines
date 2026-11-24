-- ClickHouse.MySql ClickHouse
SELECT
	intDiv(e.Value1, j.Value1),
	e.Value1 % j.Value1,
	e.Dbl / j.Dbl,
	intDiv(e.Value1, j.Value1 * 2)
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

