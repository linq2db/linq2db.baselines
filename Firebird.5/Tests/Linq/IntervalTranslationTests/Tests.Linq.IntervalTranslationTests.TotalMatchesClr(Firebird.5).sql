-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 36000000000,
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS DOUBLE PRECISION) / 600000000,
	CAST(CAST("r"."InTicks" AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

