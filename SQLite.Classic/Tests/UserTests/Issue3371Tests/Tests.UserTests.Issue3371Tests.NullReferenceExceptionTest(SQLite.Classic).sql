﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PayRate]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PayRate]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Employees]
(
	[Id]        INTEGER NOT NULL,
	[PayRateId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
DECLARE @Name NVarChar -- String
SET     @Name = NULL

SELECT
	[item_1].[Id],
	[item_1].[PayRateId],
	[a_PayRate].[Name]
FROM
	[Employees] [item_1]
		LEFT JOIN [PayRate] [a_PayRate] ON [item_1].[PayRateId] = [a_PayRate].[Id]
WHERE
	CASE
		WHEN [item_1].[PayRateId] IS NULL THEN @Name
		ELSE [a_PayRate].[Name]
	END = 'test'

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Employees]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PayRate]

