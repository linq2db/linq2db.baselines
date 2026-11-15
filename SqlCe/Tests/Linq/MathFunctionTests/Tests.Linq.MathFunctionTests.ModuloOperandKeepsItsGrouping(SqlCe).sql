-- SqlCe
SELECT
	([p].[ID] + 5) % 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

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

-- SqlCe
SELECT
	(100 - [p].[ID]) % 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

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

-- SqlCe
SELECT
	100 - [p].[ID] % 3
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

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

-- SqlCe
SELECT
	([p].[ID] + 20) % (([p].[ID] * 5 + 3) % 5)
FROM
	[LinqDataTypes] [p]
ORDER BY
	[p].[ID]

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

-- SqlCe
SELECT
	([p].[ID] + 20) % ([p].[ID] * 3)
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[ID] > 0
ORDER BY
	[p].[ID]

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

