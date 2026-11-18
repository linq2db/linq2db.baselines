-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	CAST(MOD(Trunc(r."Grace" / 60), 60) AS Int),
	CAST(r."Grace" AS Float) / 60D,
	CAST(r."Required" AS Float) / 60D
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

