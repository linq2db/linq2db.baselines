﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

