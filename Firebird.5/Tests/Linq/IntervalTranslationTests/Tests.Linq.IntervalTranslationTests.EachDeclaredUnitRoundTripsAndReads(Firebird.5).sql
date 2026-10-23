-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."InDays",
	"t1"."InMilliseconds",
	"t1"."InNanoseconds"
FROM
	"UnitSpreadRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	CAST("r"."InDays" * 24 AS DOUBLE PRECISION),
	CAST(Mod("r"."InMilliseconds" / 1000, 60) AS Int)
FROM
	"UnitSpreadRow" "r"
FETCH NEXT 2 ROWS ONLY

