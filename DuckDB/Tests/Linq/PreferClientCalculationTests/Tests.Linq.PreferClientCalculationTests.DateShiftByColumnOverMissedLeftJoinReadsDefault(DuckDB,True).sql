-- DuckDB
SELECT
	e.Value1,
	j."Date" + e.Value1 * Interval '1 Day',
	EXTRACT(year FROM (j."Date" + e.Value1 * Interval '1 Day')),
	EXTRACT(day FROM (j."Date" + e.Value1 * Interval '1 Day'))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

