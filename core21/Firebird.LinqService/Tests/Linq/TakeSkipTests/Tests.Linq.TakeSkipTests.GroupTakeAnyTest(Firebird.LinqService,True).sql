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
SELECT 'PIPPO' FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'PLUTO' FROM rdb$database UNION ALL
SELECT 'BOLTO' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	CASE WHEN EXISTS(
		SELECT FIRST @take
			*
		FROM
			"TakeSkipClass" "t1"
		GROUP BY
			"t1"."Value"
		HAVING
			Count(*) > 1
	) THEN 1 ELSE 0 END
FROM rdb$database

BeforeExecute
-- Firebird

DROP TABLE "TakeSkipClass"

