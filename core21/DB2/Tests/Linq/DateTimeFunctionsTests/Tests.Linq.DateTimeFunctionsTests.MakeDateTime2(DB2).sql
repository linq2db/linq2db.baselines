BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	TimeStamp('2010-' || RTrim(Char("p".ID)) || '-1 20:35:44')
FROM
	"LinqDataTypes" "p"
WHERE
	To_Number(To_Char(TimeStamp('2010-' || RTrim(Char("p".ID)) || '-1 20:35:44'), 'YYYY')) = 2010

