BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"     Int                                   NOT NULL,
				"Value1" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value2" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value3" VarChar(50) CHARACTER SET UNICODE_FSS,
				"Value4" VarChar(50)
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
SELECT 1,'V1','V2',NULL,'V4' FROM rdb$database UNION ALL
SELECT 2,NULL,'Z2',NULL,NULL FROM rdb$database UNION ALL
SELECT 3,'Z1',NULL,NULL,'Z4' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @separator VarChar(4) -- String
SET     @separator = ' => '

SELECT
	Max("t1"."Value4"),
	LIST("t1"."Value4", Cast(@separator as VarChar(255) CHARACTER SET UNICODE_FSS))
FROM
	"SampleClass" "t1"
GROUP BY
	"t1"."Id",
	"t1"."Value4"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

