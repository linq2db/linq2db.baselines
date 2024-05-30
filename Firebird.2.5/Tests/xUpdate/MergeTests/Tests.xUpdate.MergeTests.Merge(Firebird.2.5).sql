BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "LinqDataTypes" "Target"
USING (
	SELECT
		"t1".ID as "source_ID",
		"t1"."MoneyValue" as "source_MoneyValue",
		"t1"."DateTimeValue" as "source_DateTimeValue",
		"t1"."DateTimeValue2" as "source_DateTimeValue2",
		"t1"."BoolValue" as "source_BoolValue",
		"t1"."GuidValue" as "source_GuidValue",
		"t1"."SmallIntValue" as "source_SmallIntValue",
		"t1"."IntValue" as "source_IntValue",
		"t1"."BigIntValue" as "source_BigIntValue",
		"t1"."StringValue" as "source_StringValue"
	FROM
		"LinqDataTypes" "t1"
) "Source"
(
	"source_ID",
	"source_MoneyValue",
	"source_DateTimeValue",
	"source_DateTimeValue2",
	"source_BoolValue",
	"source_GuidValue",
	"source_SmallIntValue",
	"source_IntValue",
	"source_BigIntValue",
	"source_StringValue"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"MoneyValue" = "Source"."source_MoneyValue",
	"DateTimeValue" = "Source"."source_DateTimeValue",
	"DateTimeValue2" = "Source"."source_DateTimeValue2",
	"BoolValue" = "Source"."source_BoolValue",
	"GuidValue" = "Source"."source_GuidValue",
	"SmallIntValue" = "Source"."source_SmallIntValue",
	"IntValue" = "Source"."source_IntValue",
	"BigIntValue" = "Source"."source_BigIntValue",
	"StringValue" = "Source"."source_StringValue"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_MoneyValue",
	"Source"."source_DateTimeValue",
	"Source"."source_DateTimeValue2",
	"Source"."source_BoolValue",
	"Source"."source_GuidValue",
	"Source"."source_SmallIntValue",
	"Source"."source_IntValue",
	"Source"."source_BigIntValue",
	"Source"."source_StringValue"
)

