BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DataClass]
(
	[Id]    INTEGER  NOT NULL,
	[Value] NVarChar     NULL,

	CONSTRAINT [PK_DataClass] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(1,'Frau'),
(2,'Herr')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value_2 NVarChar(4) -- String
SET     @Value_2 = 'Frau'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] = @Value_2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value_2 NVarChar(4) -- String
SET     @Value_2 = 'Frau'
DECLARE @Value_3 NVarChar(4) -- String
SET     @Value_3 = 'Herr'

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[DataClass] [m_1]
WHERE
	[m_1].[Value] IN (@Value_2, @Value_3)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DataClass]

