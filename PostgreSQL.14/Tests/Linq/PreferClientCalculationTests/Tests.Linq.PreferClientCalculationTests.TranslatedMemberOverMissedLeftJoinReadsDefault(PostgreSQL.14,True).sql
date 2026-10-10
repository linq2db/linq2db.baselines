-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	e."Value1",
	Coalesce(j."Value1", 0)::text,
	Coalesce(j."Key", '00000000-0000-0000-0000-000000000000'::uuid)::VarChar(36),
	CASE
		WHEN Coalesce(j."Value1", 0) >= 5 THEN Coalesce(j."Value1", 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce(j."Value1", 0) <= -5 THEN Coalesce(j."Value1", 0)
		ELSE -5
	END,
	Coalesce(j."Value1", 0)::text || '!',
	Coalesce(j."Name", '') || '!',
	Coalesce(j."Date", '0001-01-01'::date) + 10 * Interval '1 Day',
	Floor(Extract(year From (Coalesce(j."Date", '0001-01-01'::date) + 10 * Interval '1 Day')))::Int,
	Floor(Extract(day From (Coalesce(j."Date", '0001-01-01'::date) + 10 * Interval '1 Day')))::Int
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

