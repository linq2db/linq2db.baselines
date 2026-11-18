-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	j."Date" + -e."Value1" * Interval '1 Day',
	j."Date" + -1 * Interval '1 Day'
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

