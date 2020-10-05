BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = :"ID"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID_1  -- Int32
SET     @ID_1 = 1001
DECLARE @MoneyValue_1 Decimal(4,0)
SET     @MoneyValue_1 = 1000
DECLARE @SmallIntValue_1  -- Int16
SET     @SmallIntValue_1 = 100

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:"ID_1",
	:"MoneyValue_1",
	:"SmallIntValue_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = 2000,
	"LinqDataTypes"."SmallIntValue" = 200
WHERE
	"LinqDataTypes"."ID" = :"ID"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID_1  -- Int32
SET     @ID_1 = 1001
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t"."ID",
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."ID" = :"ID_1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."ID" = :"ID"

