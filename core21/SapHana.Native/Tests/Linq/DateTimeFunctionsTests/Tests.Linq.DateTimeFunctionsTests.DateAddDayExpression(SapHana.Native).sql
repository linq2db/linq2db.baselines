BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 5

SELECT
	Add_Days("t"."DateTimeValue", :"p1")
FROM
	"LinqDataTypes" "t"

