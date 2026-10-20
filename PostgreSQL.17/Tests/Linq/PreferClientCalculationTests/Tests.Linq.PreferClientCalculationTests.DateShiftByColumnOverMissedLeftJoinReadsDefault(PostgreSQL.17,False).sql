-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	e."Value1",
	j."Date" + e."Value1" * Interval '1 Day',
	Floor(Extract(year From (j."Date" + e."Value1" * Interval '1 Day')))::Int,
	Floor(Extract(day From (j."Date" + e."Value1" * Interval '1 Day')))::Int
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

