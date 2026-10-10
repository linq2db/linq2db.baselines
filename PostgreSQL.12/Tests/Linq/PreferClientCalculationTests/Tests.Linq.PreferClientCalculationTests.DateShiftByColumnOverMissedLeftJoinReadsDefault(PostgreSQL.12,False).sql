-- PostgreSQL.12 PostgreSQL12
SELECT
	e."Value1",
	Coalesce(j."Date", '0001-01-01'::date) + e."Value1" * Interval '1 Day',
	Floor(Extract(year From (Coalesce(j."Date", '0001-01-01'::date) + e."Value1" * Interval '1 Day')))::Int,
	Floor(Extract(day From (Coalesce(j."Date", '0001-01-01'::date) + e."Value1" * Interval '1 Day')))::Int
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

