-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
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

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r"."InSeconds" / 86400 AS Int),
	CAST(Mod("r"."InSeconds" / 3600, 24) AS Int),
	CAST(Mod("r"."InSeconds" / 60, 60) AS Int),
	CAST(Mod(Int("r"."InSeconds"), 60) AS Int)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

