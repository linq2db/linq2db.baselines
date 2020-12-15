BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [DataClass]
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
DECLARE @Value_1 NVarChar(4) -- String
SET     @Value_1 = 'Frau'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] = @Value_1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1 NVarChar(4) -- String
SET     @Value_1 = 'Frau'
DECLARE @Value_2 NVarChar(4) -- String
SET     @Value_2 = 'Herr'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] IN (@Value_1, @Value_2)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [DataClass]

