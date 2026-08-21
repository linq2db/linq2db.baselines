-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InDays BigInt(8) -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt(8) -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds BigInt(8) -- Int64
SET     @InNanoseconds = 7000123400

INSERT INTO "UnitSpreadRow"
(
	"Id",
	"InDays",
	"InMilliseconds",
	"InNanoseconds"
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."InDays",
	"t1"."InMilliseconds",
	"t1"."InNanoseconds"
FROM
	"UnitSpreadRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r"."InDays" * 24 AS Float),
	CAST(Mod("r"."InMilliseconds" / 1000, 60) AS Int)
FROM
	"UnitSpreadRow" "r"
FETCH NEXT 2 ROWS ONLY

