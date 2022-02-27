BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Person1974]
(
	[ID]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Person1974]
(
	[ID],
	[Name]
)
VALUES
(1,'Person1'),
(2,'Person2')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Article]
(
	[ID]       NVarChar(255)     NULL,
	[PersonId] INTEGER       NOT NULL,
	[Price]    Float         NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Article]
(
	[ID],
	[PersonId],
	[Price]
)
VALUES
('Article',2,0)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Name],
	[a_Bought].[ID],
	[a_Bought].[PersonId],
	[a_Bought].[Price],
	[a].[ID],
	[a].[PersonId],
	[a].[Price]
FROM
	[Person1974] [t1]
		LEFT JOIN [Article] [a_Bought] ON [t1].[ID] = [a_Bought].[PersonId]
		LEFT JOIN [Article] [a] ON [a].[PersonId] = [t1].[ID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Article]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Person1974]

