﻿BeforeExecute
--  Firebird.2.5 Firebird

SELECT
	Extract(hour from DateAdd(Hour, 22, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

