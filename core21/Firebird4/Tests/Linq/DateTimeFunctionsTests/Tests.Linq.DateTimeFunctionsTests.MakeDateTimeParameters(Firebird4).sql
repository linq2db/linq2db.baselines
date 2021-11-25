BeforeExecute
-- Firebird4 Firebird
DECLARE @ID VarChar(5) -- String
SET     @ID = '2010-'

SELECT
	Cast((Cast(@ID as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Cast(Floor(Extract(year from Cast((Cast(@ID as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(11)) || '-1') as Date))) as int) = 2010

