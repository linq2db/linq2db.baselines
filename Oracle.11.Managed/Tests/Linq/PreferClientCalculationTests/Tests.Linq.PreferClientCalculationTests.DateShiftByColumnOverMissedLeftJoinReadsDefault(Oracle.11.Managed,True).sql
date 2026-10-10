-- Oracle.11.Managed Oracle11
SELECT
	e."Value1",
	Coalesce(j."Date", TIMESTAMP '0001-01-01 00:00:00.000000') + e."Value1" * INTERVAL '1' DAY,
	EXTRACT(YEAR FROM (Coalesce(j."Date", TIMESTAMP '0001-01-01 00:00:00.000000') + e."Value1" * INTERVAL '1' DAY)),
	EXTRACT(DAY FROM (Coalesce(j."Date", TIMESTAMP '0001-01-01 00:00:00.000000') + e."Value1" * INTERVAL '1' DAY))
FROM
	"TranslatedMemberEntity" e
		LEFT JOIN "TranslatedMemberEntity" j ON j."Id" = e."Id" + 1000

