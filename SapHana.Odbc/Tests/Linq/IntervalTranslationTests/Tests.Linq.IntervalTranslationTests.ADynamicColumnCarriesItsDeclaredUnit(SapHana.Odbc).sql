-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Elapsed BigInt -- Int64
SET     @Elapsed = 5400

INSERT INTO "DynamicDurationRow"
(
	"Id",
	"Elapsed"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST("r"."Elapsed" AS Double) / 60
FROM
	"DynamicDurationRow" "r"
LIMIT 2

