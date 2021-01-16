BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
SELECT 1,100 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t2"."Value1",
	"t2"."Value2"
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
	) "t2"

BeforeExecute
-- Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"SampleClass" "t"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

