﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Extract(weekday from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"

