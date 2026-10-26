-- SapHana.Native SapHana
DECLARE @flag TinyInt -- Byte
SET     @flag = 1

SELECT
	"t"."ID"
FROM
	"LinqDataTypes" "t"
WHERE
	:"flag" IN ("t"."BoolValue")

