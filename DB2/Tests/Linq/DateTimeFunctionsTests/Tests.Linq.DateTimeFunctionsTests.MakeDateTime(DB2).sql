BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."c1"
FROM
	(
		SELECT
			Date('2010-' || Lpad("p".ID,2,'0') || '-01') as "c1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	To_Number(To_Char("t"."c1", 'YYYY')) = 2010

