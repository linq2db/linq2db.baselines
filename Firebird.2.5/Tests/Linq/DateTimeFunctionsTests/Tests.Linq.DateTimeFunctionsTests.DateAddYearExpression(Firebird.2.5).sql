﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 11

SELECT
	DateAdd(Year, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

