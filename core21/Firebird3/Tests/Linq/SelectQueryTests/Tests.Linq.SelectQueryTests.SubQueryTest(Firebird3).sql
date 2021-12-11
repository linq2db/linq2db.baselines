BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
SELECT 1,100 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	DateAdd(Day, "t"."Value", LOCALTIMESTAMP),
	DateAdd(Day, 2, LOCALTIMESTAMP)
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
			DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
			DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
		FROM rdb$database
	) "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"SampleClass" "t"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

