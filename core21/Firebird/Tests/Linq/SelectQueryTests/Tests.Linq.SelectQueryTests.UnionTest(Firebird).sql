BeforeExecute
-- Firebird

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird

SELECT
	DateAdd(Day, "t"."Value", LOCALTIMESTAMP),
	DateAdd(Day, 2, LOCALTIMESTAMP)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	DateAdd(Day, 3, LOCALTIMESTAMP),
	DateAdd(Day, 4, LOCALTIMESTAMP)
FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"v"."Value2"
FROM
	(
		SELECT
			DateAdd(Day, "t"."Value", LOCALTIMESTAMP) as "Value1",
			DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
		FROM
			"SampleClass" "t"
		WHERE
			"t"."Value" = 1
		UNION
		SELECT
			DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
			DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
		FROM rdb$database
	) "v"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

