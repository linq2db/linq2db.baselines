BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

