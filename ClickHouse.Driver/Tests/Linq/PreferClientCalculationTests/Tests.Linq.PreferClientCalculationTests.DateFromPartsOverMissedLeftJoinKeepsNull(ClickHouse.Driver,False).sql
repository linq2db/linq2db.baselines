-- ClickHouse.Driver ClickHouse
SELECT
	e.Date,
	makeDateTime(j.Value1, j.Value1, j.Value1, 0, 0, 0),
	makeDateTime(j.Value1, j.Value1, j.Value1, 0, 0, 0),
	makeDateTime(toYear(e.Date), 1, 1, Coalesce(j.Value1, 0), 0, 0)
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

