﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT
	DateAdd(Minute, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

