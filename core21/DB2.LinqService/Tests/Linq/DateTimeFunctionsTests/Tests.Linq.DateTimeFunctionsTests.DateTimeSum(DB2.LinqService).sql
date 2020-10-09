BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1".ID, 
	Count(*), 
	Sum(((Days("t1"."DateTimeValue") - Days("t1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t1"."DateTimeValue") - MIDNIGHT_SECONDS("t1"."DateTimeValue")) * 1000 + (MICROSECOND("t1"."DateTimeValue") - MICROSECOND("t1"."DateTimeValue")) / 1000), 
	Max(((Days("t1"."DateTimeValue") - Days("t1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t1"."DateTimeValue") - MIDNIGHT_SECONDS("t1"."DateTimeValue")) * 1000 + (MICROSECOND("t1"."DateTimeValue") - MICROSECOND("t1"."DateTimeValue")) / 1000)
FROM
	"LinqDataTypes" "t1"
GROUP BY
	"t1".ID

