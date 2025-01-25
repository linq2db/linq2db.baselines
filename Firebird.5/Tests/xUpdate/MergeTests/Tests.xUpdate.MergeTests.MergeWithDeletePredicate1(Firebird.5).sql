BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "LinqDataTypes" "Target"
USING (
	SELECT
		"t".ID as "source_ID",
		"t"."MoneyValue" as "source_MoneyValue",
		"t"."DateTimeValue" as "source_DateTimeValue",
		"t"."DateTimeValue2" as "source_DateTimeValue2",
		"t"."BoolValue" as "source_BoolValue",
		"t"."GuidValue" as "source_GuidValue",
		"t"."SmallIntValue" as "source_SmallIntValue",
		"t"."IntValue" as "source_IntValue",
		"t"."BigIntValue" as "source_BigIntValue",
		"t"."StringValue" as "source_StringValue"
	FROM
		"LinqDataTypes" "t"
	WHERE
		"t".ID > 5
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

WHEN NOT MATCHED BY SOURCE AND "Target".ID > 5 THEN DELETE

BeforeExecute
DisposeTransaction
