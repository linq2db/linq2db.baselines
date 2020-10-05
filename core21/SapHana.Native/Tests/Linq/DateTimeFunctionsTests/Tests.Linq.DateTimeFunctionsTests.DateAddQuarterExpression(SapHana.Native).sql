BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	Add_Months("t"."DateTimeValue", :"p1" * 3)
FROM
	"LinqDataTypes" "t"

