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
	"r"."InSeconds" + "r"."InSeconds",
	"r"."InTicks" + "r"."InTicks",
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt),
	CAST("r"."InSeconds" * 10000000 - "r"."InTicks" AS BigInt),
	CAST("r"."InTicks" - "r"."InSeconds" * 10000000 AS BigInt),
	CAST(CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) + "r"."InSeconds" * 10000000 AS BigInt),
	CAST(CAST(-"r"."InSeconds" AS BigInt) * 10000000 + "r"."InTicks" AS BigInt),
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt),
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) + "r"."InTicks" + "r"."InTicks",
	CAST(CAST("r"."InSeconds" + "r"."InSeconds" AS BigInt) * 10000000 + "r"."InTicks" AS BigInt) - ("r"."InTicks" + "r"."InTicks"),
	CAST(CAST(-"r"."InSeconds" AS BigInt) * 10000000 - "r"."InTicks" AS BigInt)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

