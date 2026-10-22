-- DB2 DB2.LUW DB2LUW
DECLARE @bound Date(20)
SET     @bound = '2000-01-01-00.00.00.000000'

SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') > CAST(@bound AS Date)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Day", '0001-01-01') < CAST(@bound AS Date)
			THEN 'y'
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

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	Extract(year from Coalesce("j"."Day", '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

