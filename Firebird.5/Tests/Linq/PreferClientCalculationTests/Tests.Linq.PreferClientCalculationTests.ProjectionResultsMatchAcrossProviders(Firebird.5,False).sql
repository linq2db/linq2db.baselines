-- Firebird.5 Firebird4

SELECT
	"e"."Id",
	"e"."Value1" + 12345
FROM
	"ClientCalcEntity" "e"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "e"."Id" > 1 THEN "e"."Value1"
		ELSE "e"."Value2"
	END
FROM
	"ClientCalcEntity" "e"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.5 Firebird4

SELECT
	-"e"."Value1"
FROM
	"ClientCalcEntity" "e"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

-- Firebird.5 Firebird4

SELECT
	"e"."Value1" + ABS("e"."Value2")
FROM
	"ClientCalcEntity" "e"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Name"
FROM
	"ClientCalcEntity" "t1"

