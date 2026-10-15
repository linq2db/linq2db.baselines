-- DB2 DB2.LUW DB2LUW
SELECT
	"e"."Id",
	CASE
		WHEN Coalesce("j"."Span", '00:00:00') < "e"."Span" THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce("j"."Span", '00:00:00') = '00:00:00' THEN 'y'
		ELSE 'n'
	END
FROM
	"MissedSpanEntity" "e"
		LEFT JOIN "MissedSpanEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Span"
FROM
	"MissedSpanEntity" "t1"

