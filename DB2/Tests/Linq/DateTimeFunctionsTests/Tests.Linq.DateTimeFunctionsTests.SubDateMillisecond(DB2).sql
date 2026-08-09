-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("t"."DateTimeValue" + 2023456789000 MICROSECONDS) AS BigInt) - CAST(Days("t"."DateTimeValue") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("t"."DateTimeValue" + 2023456789000 MICROSECONDS) AS BigInt) - CAST(Midnight_Seconds("t"."DateTimeValue") AS BigInt)) * 10000000 + (CAST(Microsecond("t"."DateTimeValue" + 2023456789000 MICROSECONDS) AS BigInt) - CAST(Microsecond("t"."DateTimeValue") AS BigInt)) * 10 AS Float) / 10000
FROM
	"LinqDataTypes" "t"

