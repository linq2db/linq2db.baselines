-- Access.Jet.OleDb AccessOleDb
UPDATE
	[InheritanceFilter] [t]
SET
	[t].[Code] = [t].[Code],
	[t].[Child1Field] = 99
WHERE
	[t].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child1Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (12, 11, 1) AND [c_1].[Id] = 1

