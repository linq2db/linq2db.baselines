﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Mod(Extract(year from "t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

