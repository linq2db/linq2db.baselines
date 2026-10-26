-- SapHana.Native SapHana
DECLARE @value Time
SET     @value = 00:00:00
DECLARE @value_1 Time
SET     @value_1 = 00:00:00
DECLARE @value_2 Time
SET     @value_2 = 00:00:00

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Span", :"value") < "e"."Span" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Span", :"value_1") = :"value_2" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedSpanEntity" "e"
		LEFT JOIN "MissedSpanEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Span"
FROM
	"MissedSpanEntity" "t1"

