BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
SELECT 1,100 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t_1"."Id",
	"t_1"."Value",
	"t2"."Value1",
	"t2"."Value2"
FROM
	"SampleClass" "t_1"
		LEFT JOIN (
			SELECT
				"t1"."Value1",
				"t1"."Value2"
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
				) "t1"
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

