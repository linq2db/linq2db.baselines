BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)

MERGE INTO [LinqDataTypes] [Target]
USING (
	SELECT
		[t].[ID],
		[t].[MoneyValue],
		[t].[DateTimeValue],
		[t].[DateTimeValue2],
		[t].[BoolValue],
		[t].[GuidValue],
		[t].[SmallIntValue],
		[t].[IntValue],
		[t].[BigIntValue],
		[t].[StringValue]
	FROM
		[LinqDataTypes] [t]
	WHERE
		[t].[ID] > 5
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
	[Target].[MoneyValue] = [Source].[MoneyValue],
	[Target].[DateTimeValue] = [Source].[DateTimeValue],
	[Target].[DateTimeValue2] = [Source].[DateTimeValue2],
	[Target].[BoolValue] = [Source].[BoolValue],
	[Target].[GuidValue] = [Source].[GuidValue],
	[Target].[SmallIntValue] = [Source].[SmallIntValue],
	[Target].[IntValue] = [Source].[IntValue],
	[Target].[BigIntValue] = [Source].[BigIntValue],
	[Target].[StringValue] = [Source].[StringValue]

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
WHEN NOT MATCHED BY SOURCE AND [Target].[ID] > 5 THEN DELETE
;

