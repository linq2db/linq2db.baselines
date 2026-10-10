-- ClickHouse.Octonica ClickHouse
SELECT
	e.Value1,
	toString(Coalesce(j.Value1, 0)),
	lowerUTF8(toString(Coalesce(j.Key, toUUID('00000000-0000-0000-0000-000000000000')))),
	CASE
		WHEN Coalesce(j.Value1, 0) >= 5 THEN Coalesce(j.Value1, 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce(j.Value1, 0) <= -5 THEN Coalesce(j.Value1, 0)
		ELSE -5
	END,
	concat(toString(Coalesce(j.Value1, 0)), '!'),
	concat(Coalesce(j.Name, ''), '!'),
	addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), toFloat64(10)),
	toYear(addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), toFloat64(10))),
	toDayOfMonth(addDays(Coalesce(j.Date, toDateTime64('1900-01-01 00:00:00.0000000', 7)), toFloat64(10)))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

