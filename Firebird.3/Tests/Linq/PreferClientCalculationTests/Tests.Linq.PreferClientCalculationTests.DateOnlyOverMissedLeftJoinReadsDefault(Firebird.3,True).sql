-- Firebird.3 Firebird3
SELECT
	"e"."Id",
	"j"."Day",
	"e"."Day"
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Day"
FROM
	"MissedDayEntity" "t1"

-- Firebird.3 Firebird3
SELECT
	Extract(year from Coalesce("j"."Day", DATE '0001-01-01'))
FROM
	"MissedDayEntity" "e"
		LEFT JOIN "MissedDayEntity" "j" ON "j"."Id" = "e"."Id" + 1000

