-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 3000000000

SELECT
	CAST(CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) + @Ticks AS BigInt),
	CAST(@Ticks + CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) AS BigInt),
	CAST(CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) - @Ticks AS BigInt)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	"DurationRow" "r"
WHERE
	CAST("r"."InSeconds" * 10000000 + "r"."InTicks" AS BigInt) = @Ticks

