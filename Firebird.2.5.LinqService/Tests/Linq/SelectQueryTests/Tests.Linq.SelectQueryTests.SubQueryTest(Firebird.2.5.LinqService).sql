BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value",
	(
		SELECT FIRST 1
			1
		FROM
			(
				SELECT
					DateAdd(Day, "t_1"."Value", LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
				FROM
					"SampleClass" "t_1"
				WHERE
					"t_1"."Value" = 1
				UNION
				SELECT
					DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
				FROM rdb$database
			) "t1"
	),
	(
		SELECT FIRST 1
			"t2"."Value1"
		FROM
			(
				SELECT
					DateAdd(Day, "t_2"."Value", LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
				FROM
					"SampleClass" "t_2"
				WHERE
					"t_2"."Value" = 1
				UNION
				SELECT
					DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
				FROM rdb$database
			) "t2"
	),
	(
		SELECT FIRST 1
			"t3"."Value2"
		FROM
			(
				SELECT
					DateAdd(Day, "t_3"."Value", LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
				FROM
					"SampleClass" "t_3"
				WHERE
					"t_3"."Value" = 1
				UNION
				SELECT
					DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
					DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
				FROM rdb$database
			) "t3"
	)
FROM
	"SampleClass" "t"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

