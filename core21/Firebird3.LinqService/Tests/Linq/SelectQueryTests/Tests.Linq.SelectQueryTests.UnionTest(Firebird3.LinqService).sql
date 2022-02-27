BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	DateAdd(Day, "t"."Value", CURRENT_TIMESTAMP),
	DateAdd(Day, 2, CURRENT_TIMESTAMP)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	"t1"."Value1",
	"t1"."Value2"
FROM
	(
		SELECT
			DateAdd(Day, 3, CURRENT_TIMESTAMP) as "Value1",
			DateAdd(Day, 4, CURRENT_TIMESTAMP) as "Value2"
		FROM rdb$database
	) "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"v"."Value2"
FROM
	(
		SELECT
			DateAdd(Day, "t"."Value", CURRENT_TIMESTAMP) as "Value1",
			DateAdd(Day, 2, CURRENT_TIMESTAMP) as "Value2"
		FROM
			"SampleClass" "t"
		WHERE
			"t"."Value" = 1
		UNION
		SELECT
			"t1"."Value1",
			"t1"."Value2"
		FROM
			(
				SELECT
					DateAdd(Day, 3, CURRENT_TIMESTAMP) as "Value1",
					DateAdd(Day, 4, CURRENT_TIMESTAMP) as "Value2"
				FROM rdb$database
			) "t1"
	) "v"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "SampleClass"

