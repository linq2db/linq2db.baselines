BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID VarChar(5) -- String
SET     @ID = '2010-'

SELECT
	Date(@ID || RTrim(Char("p".ID)) || '-1')
FROM
	"LinqDataTypes" "p"
WHERE
	To_Number(To_Char(Date(@ID || RTrim(Char("p".ID)) || '-1'), 'YYYY')) = 2010

