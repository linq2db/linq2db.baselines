﻿BeforeExecute
--  Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT SKIP @skip
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

