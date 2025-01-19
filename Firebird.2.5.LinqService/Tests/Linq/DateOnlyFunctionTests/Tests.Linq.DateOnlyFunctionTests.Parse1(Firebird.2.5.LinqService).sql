BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)
FROM
	"Transactions" "t"
WHERE
	Extract(day from CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)) > 0

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."TransactionId",
	"t1"."TransactionDate"
FROM
	"Transactions" "t1"

