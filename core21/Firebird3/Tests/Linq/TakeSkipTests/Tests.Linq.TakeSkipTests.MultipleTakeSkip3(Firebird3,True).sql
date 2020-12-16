BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "TakeSkipClass"
(
	"Value"
)
SELECT 'Value1' FROM rdb$database UNION ALL
SELECT 'Value2' FROM rdb$database UNION ALL
SELECT 'Value3' FROM rdb$database UNION ALL
SELECT 'Value4' FROM rdb$database UNION ALL
SELECT 'Value5' FROM rdb$database UNION ALL
SELECT 'Value6' FROM rdb$database UNION ALL
SELECT 'Value7' FROM rdb$database UNION ALL
SELECT 'Value8' FROM rdb$database UNION ALL
SELECT 'Value9' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 1
DECLARE @skip_4 Integer -- Int32
SET     @skip_4 = 3

SELECT FIRST @skip_3 SKIP @skip_4
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TakeSkipClass"

