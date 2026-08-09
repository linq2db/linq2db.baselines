-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	CAST(MOD(Trunc((CAST(r."Grace" AS Number(19)) * 10000000) / 600000000), 60) AS Int),
	CAST(CAST(r."Grace" AS Number(19)) * 10000000 AS Float) / 600000000D,
	CAST(CAST(r."Required" AS Number(19)) * 10000000 AS Float) / 600000000D
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

