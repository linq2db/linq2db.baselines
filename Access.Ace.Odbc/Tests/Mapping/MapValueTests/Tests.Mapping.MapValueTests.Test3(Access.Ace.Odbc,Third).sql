-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	IIF([t].[EnumValue] = 'S', 'Second', IIF([t].[EnumValue] = 'T', 'Third', IIF([t].[EnumValue] = 'F', 'First', [t].[EnumValue])))
FROM
	[MapValueTable] [t]

