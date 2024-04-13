BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Person1974]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Person1974]
(
	[ID]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Person1974]
(
	[ID],
	[Name]
)
VALUES
(1,'Person1'),
(2,'Person2')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Article]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Article]
(
	[ID]       NVarChar(255)     NULL,
	[PersonId] INTEGER       NOT NULL,
	[Price]    Float         NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Article]
(
	[ID],
	[PersonId],
	[Price]
)
VALUES
('Article',2,0)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Name],
	[a_Bought].[PersonId],
	[a_Bought].[ID],
	[a_Bought].[Price],
	[a_BoughtQuery].[PersonId],
	[a_BoughtQuery].[ID],
	[a_BoughtQuery].[Price]
FROM
	[Person1974] [t1]
		LEFT JOIN [Article] [a_Bought] ON [t1].[ID] = [a_Bought].[PersonId]
		LEFT JOIN [Article] [a_BoughtQuery] ON [a_BoughtQuery].[PersonId] = [t1].[ID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Article]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Person1974]

