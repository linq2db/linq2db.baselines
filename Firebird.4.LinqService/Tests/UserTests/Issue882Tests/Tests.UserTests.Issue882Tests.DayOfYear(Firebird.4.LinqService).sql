﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	Mod(Extract(yearday from "t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

