-- SqlCe

SELECT DISTINCT
	1 as [IsActive],
	CASE
		WHEN [it].[SmallIntValue] <> 0 THEN 1
		ELSE 0
	END as [Other]
FROM
	[LinqDataTypes] [it]

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

