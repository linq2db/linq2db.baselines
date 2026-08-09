-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 183845

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

-- Firebird.4 Firebird4
SELECT
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 36000000000,
	CAST(Mod((CAST("r"."InSeconds" AS BigInt) * 10000000) / 36000000000, 24) AS Int),
	CAST(CAST("r"."InTicks" AS BigInt) AS DOUBLE PRECISION) / 600000000
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

