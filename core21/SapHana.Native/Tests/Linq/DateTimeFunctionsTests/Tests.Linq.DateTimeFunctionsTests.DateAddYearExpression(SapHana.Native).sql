BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 11

SELECT
	Add_Years("t"."DateTimeValue", :"p1")
FROM
	"LinqDataTypes" "t"

