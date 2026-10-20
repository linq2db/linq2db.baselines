-- ClickHouse.Octonica ClickHouse
SELECT
	e.Value1,
	addDays(j.Date, e.Value1),
	toYear(addDays(j.Date, e.Value1)),
	toDayOfMonth(addDays(j.Date, e.Value1))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

