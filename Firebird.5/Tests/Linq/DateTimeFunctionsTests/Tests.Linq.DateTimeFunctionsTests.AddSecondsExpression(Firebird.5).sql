﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	DateAdd(Second, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

