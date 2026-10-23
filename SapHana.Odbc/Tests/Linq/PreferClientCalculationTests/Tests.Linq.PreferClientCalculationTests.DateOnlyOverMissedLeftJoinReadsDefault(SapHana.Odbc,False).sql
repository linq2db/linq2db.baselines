-- SapHana.Odbc SapHanaOdbc
DECLARE @bound Date
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.0000000'
DECLARE @bound Date
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.0000000'

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') > ? THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') < ? THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') > "e"."Day" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') <= "e"."Day" THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Year(Coalesce("j"."Day", '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

