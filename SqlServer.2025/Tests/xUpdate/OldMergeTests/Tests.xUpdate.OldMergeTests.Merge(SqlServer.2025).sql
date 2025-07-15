BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[DateTimeValue2],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[SmallIntValue],
	[t1].[IntValue],
	[t1].[BigIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

MERGE INTO [LinqDataTypes] [Target]
USING (
	SELECT
		[t1].[ID],
		[t1].[MoneyValue],
		[t1].[DateTimeValue],
		[t1].[DateTimeValue2],
		[t1].[BoolValue],
		[t1].[GuidValue],
		[t1].[SmallIntValue],
		[t1].[IntValue],
		[t1].[BigIntValue],
		[t1].[StringValue]
	FROM
		[LinqDataTypes] [t1]
) [Source]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[MoneyValue] = [Source].[MoneyValue],
	[DateTimeValue] = [Source].[DateTimeValue],
	[DateTimeValue2] = [Source].[DateTimeValue2],
	[BoolValue] = [Source].[BoolValue],
	[GuidValue] = [Source].[GuidValue],
	[SmallIntValue] = [Source].[SmallIntValue],
	[IntValue] = [Source].[IntValue],
	[BigIntValue] = [Source].[BigIntValue],
	[StringValue] = [Source].[StringValue]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
)
VALUES
(
	[Source].[ID],
	[Source].[MoneyValue],
	[Source].[DateTimeValue],
	[Source].[DateTimeValue2],
	[Source].[BoolValue],
	[Source].[GuidValue],
	[Source].[SmallIntValue],
	[Source].[IntValue],
	[Source].[BigIntValue],
	[Source].[StringValue]
)
;

