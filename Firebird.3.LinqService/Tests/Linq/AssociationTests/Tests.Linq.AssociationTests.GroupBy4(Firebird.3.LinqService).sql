﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Key_1"
FROM
	(
		SELECT
			Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int) as "Key_1"
		FROM
			"LinqDataTypes" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

