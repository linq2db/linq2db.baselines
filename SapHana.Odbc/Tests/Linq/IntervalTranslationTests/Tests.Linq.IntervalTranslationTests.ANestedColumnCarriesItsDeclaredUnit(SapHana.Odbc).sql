-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed BigInt -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed BigInt -- Int64
SET     @Converted_Elapsed = 5400

INSERT INTO "NestedDurationRow"
(
	"Id",
	"Declared",
	"Converted"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Declared",
	"t1"."Converted"
FROM
	"NestedDurationRow" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST("r"."Declared" AS Double) / 60
FROM
	"NestedDurationRow" "r"
LIMIT 2

