BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

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
	"t"."MoneyValue" * "t".ID = 1.11
FETCH NEXT @take ROWS ONLY

