-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	j."Date" + -e."Value1" * INTERVAL '1' DAY,
	j."Date" + -1D * INTERVAL '1' DAY
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

