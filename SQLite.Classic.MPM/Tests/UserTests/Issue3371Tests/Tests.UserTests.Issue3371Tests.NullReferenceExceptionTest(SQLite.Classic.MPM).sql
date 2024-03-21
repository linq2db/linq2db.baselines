﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [PayRate]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PayRate]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Employees]
(
	[Id]        INTEGER NOT NULL,
	[PayRateId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[a_PayRate].[Id],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON ([item_1].[PayRateId] = [a_PayRate].[Id] OR [item_1].[PayRateId] IS NULL AND [a_PayRate].[Id] IS NULL)
WHERE
	[a_PayRate].[Name] = 'test'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[item_1].[PayRateId],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON ([item_1].[PayRateId] = [a_PayRate].[Id] OR [item_1].[PayRateId] IS NULL AND [a_PayRate].[Id] IS NULL)
WHERE
	CASE
		WHEN [item_1].[PayRateId] IS NULL THEN NULL
		ELSE [a_PayRate].[Name]
	END = 'test'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [PayRate]

