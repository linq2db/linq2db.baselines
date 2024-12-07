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
DECLARE @cond NVarChar(4) -- String
SET     @cond = 'Frau'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] = @cond

BeforeExecute
-- SQLite.MS SQLite
DECLARE @In NVarChar(4) -- String
SET     @In = 'Frau'
DECLARE @In_1 NVarChar(4) -- String
SET     @In_1 = 'Herr'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] IN (@In, @In_1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DataClass]

