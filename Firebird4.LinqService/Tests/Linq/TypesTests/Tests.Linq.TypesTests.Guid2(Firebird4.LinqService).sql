BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @GuidValue Guid
SET     @GuidValue = X'D2F970C035AC49879CD55BADB1757436'

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
	"p"."GuidValue" = @GuidValue

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @GuidValue Guid
SET     @GuidValue = X'40932FDB15434E4AAC2CCA371604FB4B'

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
	"p"."GuidValue" = @GuidValue

