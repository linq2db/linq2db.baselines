﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @DateTimeValue_1 TimeStamp -- DateTime
SET     @DateTimeValue_1 = CAST('2009-09-27' AS timestamp)

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
WHERE
	"t1"."DateTimeValue" = @DateTimeValue_1

