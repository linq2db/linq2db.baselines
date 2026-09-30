-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	DateAdd(millisecond, CAST(Mod("r"."Grace" * 10000000, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, ("r"."Grace" * 10000000) / 864000000000, TIMESTAMP '2026-03-01 00:00:00.0000')),
	DateAdd(millisecond, CAST(Mod("r"."Required" * 10000000, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, ("r"."Required" * 10000000) / 864000000000, TIMESTAMP '2026-03-01 00:00:00.0000'))
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

