﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	Extract(quarter from "t"."TransactionDate")
FROM
	"Transactions" "t"

