BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."c1"
FROM
	( 
		SELECT 
			TimeStamp(RTrim(Char(To_Number(To_Char("t"."DateTimeValue", 'YYYY')))) || '-01-01 00:00:00') as "c1"
		FROM
			"LinqDataTypes" "t"
	) "p"
WHERE
	To_Number(To_Char("p"."c1", 'DD')) > 0

