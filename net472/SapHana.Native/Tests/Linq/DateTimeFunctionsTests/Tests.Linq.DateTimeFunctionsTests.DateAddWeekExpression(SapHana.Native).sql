BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = -1

SELECT
	Add_Days("t"."DateTimeValue", :"p1" * 7)
FROM
	"LinqDataTypes" "t"

