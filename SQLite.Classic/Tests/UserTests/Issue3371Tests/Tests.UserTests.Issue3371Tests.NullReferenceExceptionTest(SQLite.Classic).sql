BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[a_PayRate].[Id],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON [item_1].[PayRateId] = [a_PayRate].[Id]
WHERE
	[a_PayRate].[Name] = 'test'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[item_1].[PayRateId],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON [item_1].[PayRateId] = [a_PayRate].[Id]
WHERE
	[a_PayRate].[Name] = 'test' AND [item_1].[PayRateId] IS NOT NULL

