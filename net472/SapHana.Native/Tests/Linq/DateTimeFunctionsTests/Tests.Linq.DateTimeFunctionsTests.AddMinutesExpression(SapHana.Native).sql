BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = -8

SELECT
	Add_Seconds("t"."DateTimeValue", :"p1" * 60)
FROM
	"LinqDataTypes" "t"

