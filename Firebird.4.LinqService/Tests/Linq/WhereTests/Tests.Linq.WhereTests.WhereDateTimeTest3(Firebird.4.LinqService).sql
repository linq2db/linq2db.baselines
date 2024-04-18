﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2009-09-27' AS timestamp)

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
	"t1"."DateTimeValue" = @DateTimeValue

