﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 6

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
OFFSET @skip ROWS

