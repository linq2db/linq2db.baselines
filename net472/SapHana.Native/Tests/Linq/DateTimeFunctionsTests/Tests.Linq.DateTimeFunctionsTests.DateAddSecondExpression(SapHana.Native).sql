BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 41

SELECT
	Add_Seconds("t"."DateTimeValue", :"p1")
FROM
	"LinqDataTypes" "t"

