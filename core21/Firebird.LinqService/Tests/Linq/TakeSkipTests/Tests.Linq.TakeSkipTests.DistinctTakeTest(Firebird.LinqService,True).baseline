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
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'PIPPO' FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'BOLTO' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT FIRST @take DISTINCT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"

BeforeExecute
-- Firebird

DROP TABLE "TakeSkipClass"

