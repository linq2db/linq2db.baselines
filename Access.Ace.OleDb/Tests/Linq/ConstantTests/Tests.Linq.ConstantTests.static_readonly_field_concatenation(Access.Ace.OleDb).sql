-- Access.Ace.OleDb AccessOleDb

SELECT
	[e].[Id],
	[e].[GuidValue],
	[e].[GuidNullableValue],
	[e].[StringValue]
FROM
	[TestConstantsData] [e]
WHERE
	(IIF([e].[StringValue] IS NULL, '', [e].[StringValue]) + '1') = 'StrValue1'

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[GuidValue],
	[t1].[GuidNullableValue],
	[t1].[StringValue]
FROM
	[TestConstantsData] [t1]

