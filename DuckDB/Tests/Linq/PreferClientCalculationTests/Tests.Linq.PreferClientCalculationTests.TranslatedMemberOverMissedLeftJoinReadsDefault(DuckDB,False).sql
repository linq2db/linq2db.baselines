-- DuckDB
SELECT
	e.Value1,
	CAST(Coalesce(j.Value1, 0) AS VARCHAR),
	j."Key",
	CASE
		WHEN Coalesce(j.Value1, 0) >= 5 THEN Coalesce(j.Value1, 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce(j.Value1, 0) <= -5 THEN Coalesce(j.Value1, 0)
		ELSE -5
	END,
	CAST(Coalesce(j.Value1, 0) AS VARCHAR) || '!',
	Coalesce(j.Name, '') || '!',
	Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + 10 * Interval '1 Day',
	EXTRACT(year FROM (Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + 10 * Interval '1 Day')),
	EXTRACT(day FROM (Coalesce(j."Date", '0001-01-01 00:00:00.000000'::TIMESTAMP) + 10 * Interval '1 Day'))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

