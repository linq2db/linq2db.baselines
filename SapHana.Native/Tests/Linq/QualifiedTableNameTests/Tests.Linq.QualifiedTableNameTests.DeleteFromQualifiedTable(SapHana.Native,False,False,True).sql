-- SapHana.Native SapHana
SELECT
	current_schema
FROM
	"LinqDataTypes" "t1"
LIMIT 1

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	"TESTDBNATIVE"."QualifiedNameTable" "t1"
WHERE
	"t1"."ID" = :"ID"

