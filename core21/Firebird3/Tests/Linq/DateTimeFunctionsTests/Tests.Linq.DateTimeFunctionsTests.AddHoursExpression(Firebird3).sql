﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 22

SELECT
	DateAdd(Hour, Cast(@p_1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

