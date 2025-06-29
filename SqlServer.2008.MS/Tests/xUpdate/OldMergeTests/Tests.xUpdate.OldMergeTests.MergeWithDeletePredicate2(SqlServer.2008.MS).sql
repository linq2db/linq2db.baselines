BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

WHEN NOT MATCHED BY SOURCE AND [Target].[ID] > 5 THEN DELETE
;

