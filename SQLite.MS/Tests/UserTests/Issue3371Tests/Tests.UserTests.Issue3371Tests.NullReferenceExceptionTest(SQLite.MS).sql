BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PayRate]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PayRate]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PayRate]
(
	[Id],
	[Name]
)
VALUES
(1,'Name1'),
(2,'Name2'),
(3,'test')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Employees]
(
	[Id]        INTEGER NOT NULL,
	[PayRateId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Employees]
(
	[Id],
	[PayRateId]
)
VALUES
(1,1),
(2,NULL),
(3,3)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[item_1].[Id],
	[a_PayRate].[Id],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON [item_1].[PayRateId] = [a_PayRate].[Id] AND [item_1].[PayRateId] IS NOT NULL
WHERE
	[a_PayRate].[Name] = 'test' AND [a_PayRate].[Name] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[item_1].[Id],
	[item_1].[PayRateId],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON [item_1].[PayRateId] = [a_PayRate].[Id] AND [item_1].[PayRateId] IS NOT NULL
WHERE
	[a_PayRate].[Name] = 'test' AND [a_PayRate].[Name] IS NOT NULL AND
	[item_1].[PayRateId] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PayRate]

