-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds BigInt -- Int64
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."InDays",
	"t1"."InMilliseconds",
	"t1"."InNanoseconds"
FROM
	"UnitSpreadRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	CAST(CAST("r"."InDays" AS BigInt) * 864000000000 AS DOUBLE PRECISION) / 36000000000,
	CAST(Mod((CAST("r"."InMilliseconds" AS BigInt) * 10000) / 10000000, 60) AS Int)
FROM
	"UnitSpreadRow" "r"
FETCH NEXT 2 ROWS ONLY

