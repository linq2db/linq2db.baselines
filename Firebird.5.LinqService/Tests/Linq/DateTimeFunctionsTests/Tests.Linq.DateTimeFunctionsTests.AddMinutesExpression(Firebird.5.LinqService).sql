﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	Extract(minute from DateAdd(Minute, -8, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

