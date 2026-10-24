-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Doubled Int -- Int32
SET     @Doubled = 20
DECLARE @Tripled Int -- Int32
SET     @Tripled = 30
DECLARE @Plain Int -- Int32
SET     @Plain = 10

INSERT INTO "DivergentConversionRow"
(
	"Id",
	"Doubled",
	"Tripled",
	"Plain"
)
VALUES
(
	?,
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @PlainValue Int -- Int32
SET     @PlainValue = 10

SELECT
	"r"."Doubled",
	"r"."Tripled",
	"r"."Plain",
	"r"."Doubled" + "r"."Doubled",
	"r"."Plain" + "r"."Plain",
	"r"."Doubled" + ?
FROM
	"DivergentConversionRow" "r"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
DECLARE @Doubled Int -- Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	"DivergentConversionRow" "r"
WHERE
	"r"."Doubled" = ?

