BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
SELECT 'Value8' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

