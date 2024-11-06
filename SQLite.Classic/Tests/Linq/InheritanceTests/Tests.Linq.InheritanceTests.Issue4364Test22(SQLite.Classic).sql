BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_BaseThing]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4364_BaseThing]
(
	[Id]                INTEGER NOT NULL,
	[Type]              INTEGER NOT NULL,
	[BaseField]         INTEGER NOT NULL,
	[ConcreteField]     INTEGER     NULL,
	[IntermediateField] INTEGER     NULL,

	CONSTRAINT [PK_Issue4364_BaseThing] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[ConcreteField],
	[IntermediateField]
)
VALUES
(1,1,2,0,0),
(2,2,3,4,0),
(3,101,4,0,6),
(4,102,5,0,0)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_Person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4364_Person]
(
	[Id]       INTEGER       NOT NULL,
	[FullName] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue4364_Person] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(1,'Person 1'),
(2,'Person 2'),
(3,'Person 3'),
(4,'Person 4'),
(5,'Person 5')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_Interaction]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4364_Interaction]
(
	[Id]       INTEGER NOT NULL,
	[PersonId] INTEGER NOT NULL,
	[ThingId]  INTEGER NOT NULL,

	CONSTRAINT [PK_Issue4364_Interaction] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
VALUES
(1,2,3),
(2,3,4),
(3,4,1),
(4,1,2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[Issue4364_BaseThing] [b]
		INNER JOIN [Issue4364_Interaction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [Issue4364_Person] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[b].[Type] = 101 OR [b].[Type] = 102
ORDER BY
	[b].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_Interaction]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_Person]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4364_BaseThing]

