BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001
DECLARE @MoneyValue (4,0) -- Decimal
SET     @MoneyValue = 1000
DECLARE @SmallIntValue SmallInt(2) -- Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	@ID,
	@MoneyValue,
	@SmallIntValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."MoneyValue" = 2000,
	"LinqDataTypes"."SmallIntValue" = 200
WHERE
	"LinqDataTypes".ID = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 1001

SELECT 
	"t".ID, 
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
	"t".ID = @ID_1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID = @ID

