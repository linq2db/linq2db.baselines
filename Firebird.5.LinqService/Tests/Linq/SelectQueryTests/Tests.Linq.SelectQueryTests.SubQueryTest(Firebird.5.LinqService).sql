﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t_1"."Id",
	"t_1"."Value",
	"t3"."Value1",
	"t3"."Value2",
	"t3"."is_empty"
FROM
	"SampleClass" "t_1"
		LEFT JOIN LATERAL (
			SELECT
				"t2"."Value1",
				"t2"."Value2",
				1 as "is_empty"
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
						"t1"."Value1",
						"t1"."Value2"
					FROM
						(
							SELECT
								DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
								DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
							FROM rdb$database
						) "t1"
				) "t2"
			FETCH NEXT @take ROWS ONLY
		) "t3" ON 1=1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

