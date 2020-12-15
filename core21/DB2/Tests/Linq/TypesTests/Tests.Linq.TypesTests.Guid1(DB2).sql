BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @GuidValue VarBinary(16) -- Binary
SET     @GuidValue = BX'C070F9D2AC3587499CD55BADB1757436'

SELECT
	"p"."GuidValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @GuidValue

