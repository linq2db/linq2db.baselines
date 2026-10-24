-- SapHana.Odbc SapHanaOdbc
DECLARE @value Time
SET     @value = 00:00:00
DECLARE @value Time
SET     @value = 00:00:00
DECLARE @value Time
SET     @value = 00:00:00

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Span", ?) < "e"."Span" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Span", ?) = ? THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedSpanEntity" "e"
		LEFT JOIN "MissedSpanEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Span"
FROM
	"MissedSpanEntity" "t1"

