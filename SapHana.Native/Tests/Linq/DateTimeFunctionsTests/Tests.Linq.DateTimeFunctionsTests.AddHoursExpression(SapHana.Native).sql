-- SapHana.Native SapHana
DECLARE @Hour Integer -- Int32
SET     @Hour = 22

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", :"Hour" * 3600))
FROM
	"LinqDataTypes" "t"

