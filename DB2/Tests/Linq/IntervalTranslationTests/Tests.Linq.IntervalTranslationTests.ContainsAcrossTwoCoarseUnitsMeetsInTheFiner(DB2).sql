-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InDays BigInt(8) -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt(8) -- Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds BigInt(8) -- Int64
SET     @InNanoseconds = 172800000000000

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
	"r"."Id"
FROM
	"UnitSpreadRow" "r"
WHERE
	"r"."InDays" * 86400000 IN (
		SELECT
			"x"."InMilliseconds"
		FROM
			"UnitSpreadRow" "x"
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"UnitSpreadRow" "r"
WHERE
	"r"."InMilliseconds" IN (
		SELECT
			"x"."InDays" * 86400000
		FROM
			"UnitSpreadRow" "x"
	)

