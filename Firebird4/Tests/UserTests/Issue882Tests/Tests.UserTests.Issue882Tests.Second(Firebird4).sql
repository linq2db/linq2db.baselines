﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Mod(CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

