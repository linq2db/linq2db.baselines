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
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT SKIP @skip
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT SKIP @skip
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird

DROP TABLE "TakeSkipClass"

