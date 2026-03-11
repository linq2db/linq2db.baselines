-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t].[Value2] IS NULL, '', [t].[Value2])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([t].[Value3] IS NULL, '', [t].[Value3])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb

SELECT
	Mid(IIF([t].[Value3] IS NULL, '', ' -> ' + [t].[Value3]) + IIF([t].[Value1] IS NULL, '', ' -> ' + [t].[Value1]) + IIF([t].[Value2] IS NULL, '', ' -> ' + [t].[Value2]), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.Ace.OleDb AccessOleDb

SELECT
	Mid(IIF([t].[Value3] IS NULL, '', ' -> ' + [t].[Value3]) + IIF([t].[Value3] IS NULL, '', ' -> ' + [t].[Value3]), 5)
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

