-- PostgreSQL.13 PostgreSQL12
SELECT
	e."Date",
	make_timestamp(j."Value1", j."Value1", j."Value1", 0, 0, 0),
	make_timestamp(j."Value1", j."Value1", j."Value1", 0, 0, 0),
	make_timestamp(Floor(Extract(year From e."Date"))::Int, 1, 1, Coalesce(j."Value1", 0), 0, 0::Float)
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

