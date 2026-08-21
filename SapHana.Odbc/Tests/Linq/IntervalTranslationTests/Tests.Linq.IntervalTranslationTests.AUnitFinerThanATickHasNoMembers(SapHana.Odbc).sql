-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InDays BigInt -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds BigInt -- Int64
SET     @InMilliseconds = 0
DECLARE @InNanoseconds BigInt -- Int64
SET     @InNanoseconds = 7000000000

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
	"r"."InNanoseconds"
FROM
	"UnitSpreadRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."InDays",
	"t1"."InMilliseconds",
	"t1"."InNanoseconds"
FROM
	"UnitSpreadRow" "t1"
LIMIT 2

