-- Firebird.5 Firebird4
DECLARE @bound Date
SET     @bound = DATE '2000-01-01'

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Day", DATE '0001-01-01') > CAST(@bound AS Date)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", DATE '0001-01-01') < CAST(@bound AS Date)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", DATE '0001-01-01') > "e"."Day" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", DATE '0001-01-01') <= "e"."Day"
			THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- Firebird.5 Firebird4
SELECT
	Extract(year from Coalesce("j"."Day", DATE '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

