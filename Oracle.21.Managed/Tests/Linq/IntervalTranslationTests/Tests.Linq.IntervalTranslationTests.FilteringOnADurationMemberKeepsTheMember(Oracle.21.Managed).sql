-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	CAST(CAST(r."Grace" AS Number(19)) * 10000000 AS Float) / 600000000D > 30D
ORDER BY
	r."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"OptionalDurationRow" r
WHERE
	CAST(CAST(r."Required" AS Number(19)) * 10000000 AS Float) / 600000000D > 30D
ORDER BY
	r."Id"

