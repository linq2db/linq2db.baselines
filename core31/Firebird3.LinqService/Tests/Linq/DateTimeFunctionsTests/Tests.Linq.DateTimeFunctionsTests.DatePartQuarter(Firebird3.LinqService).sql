﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	(Extract(Month from "t"."DateTimeValue") - 1) / 3 + 1
FROM
	"LinqDataTypes" "t"

