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
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'PIPPO' FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'BOLTO' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 3 DISTINCT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TakeSkipClass"

