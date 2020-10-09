BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."c1"
FROM
	( 
		SELECT 
			TimeStamp(RTrim(Char(To_Number(To_Char("p"."DateTimeValue", 'YYYY')))) || '-10-1 20:35:44') as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	To_Number(To_Char("t"."c1", 'MM')) = 10

