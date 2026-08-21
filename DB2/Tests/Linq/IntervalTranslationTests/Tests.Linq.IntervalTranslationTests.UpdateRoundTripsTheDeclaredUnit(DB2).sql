-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 4567

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
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"DurationRow" "t1"
SET
	"InSeconds" = @InSeconds,
	"InTicks" = @InTicks,
	"Undeclared" = @Undeclared,
	"UndeclaredSeconds" = @UndeclaredSeconds
WHERE
	"t1"."Id" = @Id

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 45670000000

UPDATE
	"DurationRow" "r"
SET
	"InSeconds" = CAST(@InSeconds AS BigInt),
	"InTicks" = CAST(@InTicks AS BigInt)
WHERE
	"r"."Id" = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

