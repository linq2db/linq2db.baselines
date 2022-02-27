BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 2

SELECT
	Add_Months("t"."DateTimeValue", :"p1")
FROM
	"LinqDataTypes" "t"

