﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	Seconds_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 6000))
FROM
	"LinqDataTypes" "t"

