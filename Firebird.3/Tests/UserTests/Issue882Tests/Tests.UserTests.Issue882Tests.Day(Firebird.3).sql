﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	Mod(Extract(day from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

