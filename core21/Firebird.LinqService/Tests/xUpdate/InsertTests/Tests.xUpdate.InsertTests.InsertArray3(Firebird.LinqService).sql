BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

BeforeExecute
-- Firebird
DECLARE @arr Binary(4)
SET     @arr = X'01020304'

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."BinaryValue", 
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001

BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

