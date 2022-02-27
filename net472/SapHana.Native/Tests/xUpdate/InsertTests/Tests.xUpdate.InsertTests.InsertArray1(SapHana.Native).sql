BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = 1001
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" > 1000

