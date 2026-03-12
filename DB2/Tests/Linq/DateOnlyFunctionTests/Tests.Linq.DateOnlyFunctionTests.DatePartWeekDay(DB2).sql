-- DB2 DB2.LUW DB2LUW

SELECT
	Mod(Trunc("t"."TransactionDate") - Trunc("t"."TransactionDate", 'IW') + 1, 7) + 1
FROM
	"Transactions" "t"

