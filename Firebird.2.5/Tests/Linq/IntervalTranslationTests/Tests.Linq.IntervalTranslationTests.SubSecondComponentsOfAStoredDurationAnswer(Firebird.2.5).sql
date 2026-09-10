-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 1
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 1

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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST(Mod("r"."InTicks" / 10000, 1000) AS Int),
	CAST(Mod("r"."InTicks" / 10, 1000) AS Int)
FROM
	"DurationRow" "r"

