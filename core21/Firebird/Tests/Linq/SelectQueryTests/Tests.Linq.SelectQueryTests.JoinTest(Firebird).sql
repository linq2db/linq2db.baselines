﻿BeforeExecute
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

SELECT
	"t"."Id",
	"t"."Value",
	"t1"."Key_1",
	"t1"."SecondValue"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "Key_1",
				3 as "SecondValue"
			FROM rdb$database
		) "t1" ON "t1"."Key_1" = "t"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

