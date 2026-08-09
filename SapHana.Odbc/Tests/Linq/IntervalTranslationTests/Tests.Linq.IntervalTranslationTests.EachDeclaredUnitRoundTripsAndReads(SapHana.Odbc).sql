-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
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
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."InDays",
	"t1"."InMilliseconds",
	"t1"."InNanoseconds"
FROM
	"UnitSpreadRow" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST("r"."InDays" AS BigInt) * 864000000000 AS Double) / 36000000000,
	CAST(MOD((CAST("r"."InMilliseconds" AS BigInt) * 10000) / 10000000, 60) AS Integer)
FROM
	"UnitSpreadRow" "r"
LIMIT 2

