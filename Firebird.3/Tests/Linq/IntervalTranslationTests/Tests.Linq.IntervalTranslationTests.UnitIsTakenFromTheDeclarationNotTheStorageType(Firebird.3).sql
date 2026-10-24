-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 10800

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
	CAST("r"."InSeconds" AS DOUBLE PRECISION) / 3600,
	CAST("r"."InTicks" AS DOUBLE PRECISION) / 36000000000
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

