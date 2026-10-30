-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

-- SapHana.Native SapHana
DECLARE @data VarBinary -- Binary
SET     @data = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	:"data",
	1
)

-- SapHana.Native SapHana
DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

