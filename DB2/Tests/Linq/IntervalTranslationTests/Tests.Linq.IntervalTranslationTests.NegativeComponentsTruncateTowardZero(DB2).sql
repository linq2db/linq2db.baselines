-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = -90000

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
	CAST((CAST("r"."InSeconds" AS BigInt) * 10000000) / 864000000000 AS Int),
	CAST(Mod((CAST("r"."InSeconds" AS BigInt) * 10000000) / 36000000000, 24) AS Int),
	CAST(CAST("r"."InSeconds" AS BigInt) * 10000000 AS Float) / 36000000000
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

