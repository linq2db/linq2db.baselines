﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @param BigInt -- Int64
SET     @param = 1

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
WHERE
	@param = "t1"."BigIntValue" AND "t1"."BigIntValue" IS NOT NULL

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."DateTimeValue2",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."SmallIntValue",
	"t1"."IntValue",
	"t1"."BigIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

