﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	Extract(weekday from "t"."TransactionDate") + 1
FROM
	"Transactions" "t"

