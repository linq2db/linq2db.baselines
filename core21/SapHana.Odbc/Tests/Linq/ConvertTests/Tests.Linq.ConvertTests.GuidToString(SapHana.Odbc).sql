BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @guid NVarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	"t"."GuidValue"
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."GuidValue" as NVarChar(36)) = ?

