-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 900
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 900

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 1800

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 2700

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
DECLARE @p BigInt(8) -- Int64
SET     @p = 1800

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" > @p

-- DB2 DB2.LUW DB2LUW
DECLARE @p BigInt(8) -- Int64
SET     @p = 1800

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" >= @p
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 18000000000

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InTicks" > @Ticks

-- DB2 DB2.LUW DB2LUW
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 18000000000

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InTicks" = @Ticks

