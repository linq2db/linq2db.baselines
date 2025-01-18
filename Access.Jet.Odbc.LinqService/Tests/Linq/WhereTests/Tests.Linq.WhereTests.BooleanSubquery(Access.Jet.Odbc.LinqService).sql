BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] AND [x].[Id] = 1

