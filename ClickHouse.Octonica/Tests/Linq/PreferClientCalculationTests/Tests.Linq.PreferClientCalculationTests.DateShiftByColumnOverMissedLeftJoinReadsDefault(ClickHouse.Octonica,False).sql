-- ClickHouse.Octonica ClickHouse
SELECT
	e.Value1,
	addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), e.Value1),
	toYear(addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), e.Value1)),
	toDayOfMonth(addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), e.Value1))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

