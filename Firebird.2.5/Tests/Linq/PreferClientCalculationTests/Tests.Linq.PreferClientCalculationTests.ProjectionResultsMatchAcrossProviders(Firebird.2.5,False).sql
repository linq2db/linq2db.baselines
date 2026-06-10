-- Firebird.2.5 Firebird

SELECT
	"e"."Id",
	"e"."Value1" + 12345
FROM
	"ClientCalcEntity" "e"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN "e"."Id" > 1 THEN "e"."Value1"
		ELSE "e"."Value2"
	END
FROM
	"ClientCalcEntity" "e"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.2.5 Firebird

SELECT
	-"e"."Value1"
FROM
	"ClientCalcEntity" "e"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.2.5 Firebird

SELECT
	"e"."Value1" + ABS("e"."Value2")
FROM
	"ClientCalcEntity" "e"

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

