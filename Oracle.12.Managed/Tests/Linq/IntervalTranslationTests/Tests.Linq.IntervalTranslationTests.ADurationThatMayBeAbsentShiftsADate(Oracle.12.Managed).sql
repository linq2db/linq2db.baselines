-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	TIMESTAMP '2026-03-01 00:00:00.000000' + NumToDSInterval(Trunc((r."Grace" * 10000000) / 864000000000), 'DAY') + NumToDSInterval(MOD(r."Grace" * 10000000, 864000000000) / 10000000, 'SECOND'),
	TIMESTAMP '2026-03-01 00:00:00.000000' + NumToDSInterval(Trunc((r."Required" * 10000000) / 864000000000), 'DAY') + NumToDSInterval(MOD(r."Required" * 10000000, 864000000000) / 10000000, 'SECOND')
FROM
	"OptionalDurationRow" r
ORDER BY
	r."Id"

