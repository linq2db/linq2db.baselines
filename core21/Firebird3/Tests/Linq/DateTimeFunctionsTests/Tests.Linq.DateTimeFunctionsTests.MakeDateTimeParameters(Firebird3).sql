BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 VarChar(5) -- String
SET     @p1 = '2010-'

SELECT
	Cast((Cast(@p1 as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(11)) || '-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Cast(Floor(Extract(year from Cast((Cast(@p1 as VarChar(255) CHARACTER SET UNICODE_FSS) || Cast("p".ID as VarChar(11)) || '-1') as Date))) as int) = 2010

