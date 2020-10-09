BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @GuidValue_1 Guid
SET     @GuidValue_1 = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT FIRST @take 
	"p".ID, 
	"p"."MoneyValue", 
	"p"."DateTimeValue", 
	"p"."BoolValue", 
	"p"."GuidValue", 
	"p"."BinaryValue", 
	"p"."SmallIntValue", 
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @GuidValue_1

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @GuidValue_1 Guid
SET     @GuidValue_1 = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'

SELECT FIRST @take 
	"p".ID, 
	"p"."MoneyValue", 
	"p"."DateTimeValue", 
	"p"."BoolValue", 
	"p"."GuidValue", 
	"p"."BinaryValue", 
	"p"."SmallIntValue", 
	"p"."StringValue"
FROM
	"LinqDataTypes" "p"
WHERE
	"p"."GuidValue" = @GuidValue_1

