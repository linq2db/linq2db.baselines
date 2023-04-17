﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "LinqDataTypes" Target
USING (
	SELECT
		t1.ID,
		t1."MoneyValue",
		t1."DateTimeValue",
		t1."DateTimeValue2",
		t1."BoolValue",
		t1."GuidValue",
		t1."SmallIntValue",
		t1."IntValue",
		t1."BigIntValue",
		t1."StringValue"
	FROM
		"LinqDataTypes" t1
) "Source"
ON (Target.ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	Target."MoneyValue" = "Source"."MoneyValue",
	Target."DateTimeValue" = "Source"."DateTimeValue",
	Target."DateTimeValue2" = "Source"."DateTimeValue2",
	Target."BoolValue" = "Source"."BoolValue",
	Target."GuidValue" = "Source"."GuidValue",
	Target."SmallIntValue" = "Source"."SmallIntValue",
	Target."IntValue" = "Source"."IntValue",
	Target."BigIntValue" = "Source"."BigIntValue",
	Target."StringValue" = "Source"."StringValue"

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
	"Source".ID,
	"Source"."MoneyValue",
	"Source"."DateTimeValue",
	"Source"."DateTimeValue2",
	"Source"."BoolValue",
	"Source"."GuidValue",
	"Source"."SmallIntValue",
	"Source"."IntValue",
	"Source"."BigIntValue",
	"Source"."StringValue"
)

