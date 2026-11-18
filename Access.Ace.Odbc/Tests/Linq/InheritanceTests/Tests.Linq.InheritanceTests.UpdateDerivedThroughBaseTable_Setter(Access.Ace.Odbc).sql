-- Access.Ace.Odbc AccessODBC
UPDATE
	[InheritanceFilter] [t]
SET
	[t].[Code] = [t].[Code],
	[t].[Child1Field] = 99
WHERE
	[t].[Id] = 1

-- Access.Ace.Odbc AccessODBC
SELECT TOP 2
	[c_1].[Id],
	[c_1].[Code],
	[c_1].[Child1Field]
FROM
	[InheritanceFilter] [c_1]
WHERE
	[c_1].[Code] IN (12, 11, 1) AND [c_1].[Id] = 1

