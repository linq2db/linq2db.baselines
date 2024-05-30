BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TakeSkipClass"
			(
				"Value" VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TakeSkipClass"
(
	"Value"
)
SELECT CAST('Value1' AS VarChar(10) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'Value2' FROM rdb$database UNION ALL
SELECT 'Value3' FROM rdb$database UNION ALL
SELECT 'Value4' FROM rdb$database UNION ALL
SELECT 'Value5' FROM rdb$database UNION ALL
SELECT 'Value6' FROM rdb$database UNION ALL
SELECT 'Value7' FROM rdb$database UNION ALL
SELECT 'Value8' FROM rdb$database UNION ALL
SELECT 'Value9' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2 SKIP 3
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

