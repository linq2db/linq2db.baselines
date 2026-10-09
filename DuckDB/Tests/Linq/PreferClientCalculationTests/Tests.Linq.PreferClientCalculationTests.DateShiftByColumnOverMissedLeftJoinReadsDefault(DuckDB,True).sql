-- DuckDB
SELECT
	e.Value1,
	Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + e.Value1 * Interval '1 Day',
	EXTRACT(year FROM (Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + e.Value1 * Interval '1 Day')),
	EXTRACT(day FROM (Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + e.Value1 * Interval '1 Day'))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

