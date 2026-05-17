-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	IIF([t].[EnumValue] = 'F', 'First', IIF([t].[EnumValue] = 'S', 'Second', IIF([t].[EnumValue] = 'T', 'Third', [t].[EnumValue])))
FROM
	[MapValueTable] [t]

