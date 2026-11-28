-- SapHana.Native SapHana
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
	:"Id",
	:"InSeconds",
	:"InTicks",
	:"Undeclared",
	:"UndeclaredSeconds"
)

-- SapHana.Native SapHana
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 3000000000
DECLARE @Ticks_1 BigInt -- Int64
SET     @Ticks_1 = 3000000000
DECLARE @Ticks_2 BigInt -- Int64
SET     @Ticks_2 = 3000000000

SELECT
	CAST(CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) + :"Ticks" AS BigInt),
	CAST(:"Ticks_1" + CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) AS BigInt),
	CAST(CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) - :"Ticks_2" AS BigInt)
FROM
	"DurationRow" "r"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	"DurationRow" "r"
WHERE
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) = :"Ticks"

