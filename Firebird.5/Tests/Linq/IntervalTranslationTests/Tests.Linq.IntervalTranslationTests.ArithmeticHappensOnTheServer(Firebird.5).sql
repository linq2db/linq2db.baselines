-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	CAST("r"."InSeconds" AS DOUBLE PRECISION) / 3600,
	CAST(Mod("r"."InSeconds" / 3600, 24) AS Int),
	CAST("r"."InTicks" AS DOUBLE PRECISION) / 600000000
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

