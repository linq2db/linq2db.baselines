﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	Mod(CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

