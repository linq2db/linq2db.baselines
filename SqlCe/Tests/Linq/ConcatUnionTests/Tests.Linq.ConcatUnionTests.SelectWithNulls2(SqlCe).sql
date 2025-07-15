BeforeExecute
-- SqlCe

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
UNION ALL
SELECT
	NULL as [ID],
	NULL as [MoneyValue],
	NULL as [DateTimeValue],
	NULL as [DateTimeValue2],
	NULL as [BoolValue],
	NULL as [GuidValue],
	NULL as [SmallIntValue],
	NULL as [IntValue],
	NULL as [BigIntValue],
	NULL as [StringValue]
FROM
	[LinqDataTypes] [d]

