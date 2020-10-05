BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Int32
SET     @p1 = 22

SELECT
	Add_Seconds("t"."DateTimeValue", :"p1" * 3600)
FROM
	"LinqDataTypes" "t"

