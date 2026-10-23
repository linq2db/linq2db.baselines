-- Access.Jet.Odbc AccessODBC
UPDATE
	[InheritanceFilter] [t]
SET
	[t].[Code] = [t].[Code],
	[t].[Child2Field] = 88
WHERE
	[t].[Id] = 2

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child2Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (22, 21, 2) AND [c_1].[Id] = 2

