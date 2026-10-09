-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	DateAdd(millisecond, Mod("r"."Grace" * 10000000, 864000000000) / 10000, DateAdd(day, ("r"."Grace" * 10000000) / 864000000000, CAST(TIMESTAMP '2026-03-01 00:00:00.0000' AS TimeStamp))),
	DateAdd(millisecond, Mod("r"."Required" * 10000000, 864000000000) / 10000, DateAdd(day, ("r"."Required" * 10000000) / 864000000000, CAST(TIMESTAMP '2026-03-01 00:00:00.0000' AS TimeStamp)))
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

