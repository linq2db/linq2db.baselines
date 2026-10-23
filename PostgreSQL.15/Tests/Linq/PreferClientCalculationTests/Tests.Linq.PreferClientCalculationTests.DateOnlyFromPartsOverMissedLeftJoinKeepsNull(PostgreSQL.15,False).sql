-- PostgreSQL.15 PostgreSQL12
SELECT
	make_timestamp(j."Value1", j."Value1", j."Value1", 0, 0, 0),
	make_timestamp(j."Value1", j."Value1", j."Value1", 0, 0, 0)
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

