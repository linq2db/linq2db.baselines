-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value4" > "r"."Value5" THEN '1'
		ELSE '0'
	END = CASE
		WHEN ("r"."Value2" = "r"."Value5") THEN '1'
		WHEN NOT ("r"."Value2" = "r"."Value5") THEN '0'
		ELSE NULL
	END

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

