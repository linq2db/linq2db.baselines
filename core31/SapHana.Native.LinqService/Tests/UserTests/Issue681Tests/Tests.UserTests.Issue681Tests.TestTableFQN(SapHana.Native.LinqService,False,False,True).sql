BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	current_schema
FROM
	"LinqDataTypes" "_"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID"
FROM
	"TESTHANA"."LinqDataTypes" "t1"

