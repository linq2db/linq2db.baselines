-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
SELECT
	[a_A1_1].[TC1],
	[a_A2_1].[TC2]
FROM
	([LinqDataTypes] [ia]
		LEFT JOIN (
			SELECT
				[a_A1].[GuidValue],
				[a_A1].[ID] as [TC1]
			FROM
				[LinqDataTypes] [a_A1]
			WHERE
				[a_A1].[ID] = 2
		) [a_A1_1] ON ([ia].[GuidValue] = [a_A1_1].[GuidValue]))
		LEFT JOIN (
			SELECT
				[a_A2].[GuidValue],
				[a_A2].[ID] as [TC2]
			FROM
				[LinqDataTypes] [a_A2]
			WHERE
				[a_A2].[ID] <> 2
		) [a_A2_1] ON ([ia].[GuidValue] = [a_A2_1].[GuidValue])

