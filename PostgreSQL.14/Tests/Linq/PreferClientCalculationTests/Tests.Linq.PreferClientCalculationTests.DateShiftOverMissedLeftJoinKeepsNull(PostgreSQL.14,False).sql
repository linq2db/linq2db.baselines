-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	j."Date" + -e."Value1" * Interval '1 Day',
	j."Date" + -1 * Interval '1 Day'
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

