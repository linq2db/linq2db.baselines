-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- Firebird.3 Firebird3
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	DateAdd(millisecond, CAST(Mod("r"."InSeconds" * 10000000, 864000000000) / 1000 AS Decimal(18, 1)) / 10, DateAdd(day, ("r"."InSeconds" * 10000000) / 864000000000, CAST(TIMESTAMP '2026-03-01 00:00:00.0000' AS TimeStamp))) > TIMESTAMP '2026-03-01 01:00:00.0000'

