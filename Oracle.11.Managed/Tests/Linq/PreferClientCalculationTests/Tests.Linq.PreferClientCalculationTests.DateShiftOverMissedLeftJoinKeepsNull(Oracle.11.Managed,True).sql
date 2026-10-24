-- Oracle.11.Managed Oracle11
SELECT
	j."Date" + -e."Value1" * INTERVAL '1' DAY,
	j."Date" + -1D * INTERVAL '1' DAY
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

