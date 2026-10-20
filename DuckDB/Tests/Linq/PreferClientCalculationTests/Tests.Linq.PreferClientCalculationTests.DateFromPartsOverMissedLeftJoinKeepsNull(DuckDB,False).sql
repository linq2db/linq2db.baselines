-- DuckDB
SELECT
	e."Date",
	make_timestamp(j.Value1, j.Value1, j.Value1, 0, 0, 0),
	make_timestamp(j.Value1, j.Value1, j.Value1, 0, 0, 0),
	make_timestamp(EXTRACT(year FROM e."Date"), 1, 1, Coalesce(j.Value1, 0), 0, CAST(0 AS DOUBLE))
FROM
	TranslatedMemberEntity e
		LEFT JOIN TranslatedMemberEntity j ON j.Id = e.Id + 1000

