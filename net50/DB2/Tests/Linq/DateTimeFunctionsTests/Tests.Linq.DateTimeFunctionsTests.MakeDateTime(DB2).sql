BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Date('2010-' || RTrim(Char("p".ID)) || '-1')
FROM
	"LinqDataTypes" "p"
WHERE
	To_Number(To_Char(Date('2010-' || RTrim(Char("p".ID)) || '-1'), 'YYYY')) = 2010

