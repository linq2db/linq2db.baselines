-- SapHana.Native SapHana
DECLARE @bound Date
SET     @bound = TIMESTAMP '2000-01-01 00:00:00.0000000'
DECLARE @bound_1 Date
SET     @bound_1 = TIMESTAMP '2000-01-01 00:00:00.0000000'

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') > :"bound" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') < :"bound_1" THEN 'y'
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

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- SapHana.Native SapHana
SELECT
	Year(Coalesce("j"."Day", '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

