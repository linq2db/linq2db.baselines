BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarBinary(16) -- Binary
SET     @p = BX'C070F9D2AC3587499CD55BADB1757436'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @p

