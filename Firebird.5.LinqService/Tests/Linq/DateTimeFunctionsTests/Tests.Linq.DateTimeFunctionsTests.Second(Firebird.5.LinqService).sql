﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

