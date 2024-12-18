BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DataClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DataClass]
(
	[Id]    INTEGER  NOT NULL,
	[Value] NVarChar     NULL,

	CONSTRAINT [PK_DataClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(1,'Frau'),
(2,'Herr')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] = 'Frau' AND [m_1].[Value] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] IN ('Frau', 'Herr')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DataClass]

