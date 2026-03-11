-- SqlCe

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]
UNION ALL
SELECT
	NULL as [ID],
	NULL as [MoneyValue],
	NULL as [DateTimeValue],
	NULL as [BoolValue],
	NULL as [GuidValue],
	NULL as [BinaryValue],
	NULL as [SmallIntValue],
	NULL as [StringValue]
FROM
	[LinqDataTypes] [d]

