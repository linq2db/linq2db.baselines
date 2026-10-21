-- Oracle.11.Managed Oracle11
SELECT
	e."Value1",
	j."Date" + e."Value1" * INTERVAL '1' DAY,
	EXTRACT(YEAR FROM (j."Date" + e."Value1" * INTERVAL '1' DAY)),
	EXTRACT(DAY FROM (j."Date" + e."Value1" * INTERVAL '1' DAY))
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

