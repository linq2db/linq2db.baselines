BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."DateTimeValue2", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."SmallIntValue", 
	"t"."IntValue", 
	"t"."BigIntValue", 
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird
DECLARE @dt TimeStamp -- DateTime
SET     @dt = CAST('2010-12-14 05:00:07.425' AS timestamp)

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = @dt
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t".ID, 
	"t"."MoneyValue", 
	"t"."DateTimeValue", 
	"t"."DateTimeValue2", 
	"t"."BoolValue", 
	"t"."GuidValue", 
	"t"."SmallIntValue", 
	"t"."IntValue", 
	"t"."BigIntValue", 
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1

BeforeExecute
-- Firebird
DECLARE @pdt TimeStamp -- DateTime
SET     @pdt = CAST('2001-01-11 01:11:21.100' AS timestamp)

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = @pdt
WHERE
	"LinqDataTypes".ID = 1

