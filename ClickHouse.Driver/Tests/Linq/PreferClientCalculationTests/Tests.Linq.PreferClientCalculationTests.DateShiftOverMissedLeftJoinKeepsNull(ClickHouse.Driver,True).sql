-- ClickHouse.Driver ClickHouse
SELECT
	addDays(j.Date, negate(e.Value1)),
	addDays(j.Date, toFloat64(-1))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

