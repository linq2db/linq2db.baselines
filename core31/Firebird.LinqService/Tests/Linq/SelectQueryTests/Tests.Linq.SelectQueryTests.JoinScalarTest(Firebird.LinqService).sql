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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 100

INSERT INTO "SampleClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird

SELECT
	"t"."Id",
	"t"."Value",
	"s"."c1"
FROM
	"SampleClass" "t"
		INNER JOIN (
			SELECT
				1 as "c1"
			FROM rdb$database
		) "s" ON "s"."c1" = "t"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

