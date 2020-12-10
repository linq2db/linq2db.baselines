BeforeExecute
-- Firebird

CREATE TABLE "TakeSkipClass"
(
	"Value" VarChar(10)
)

BeforeExecute
-- Firebird

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
SELECT 'Value8' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @skip_2 Integer -- Int32
SET     @skip_2 = 1
DECLARE @skip_3 Integer -- Int32
SET     @skip_3 = 3

SELECT FIRST @skip_2 SKIP @skip_3
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird

DROP TABLE "TakeSkipClass"

