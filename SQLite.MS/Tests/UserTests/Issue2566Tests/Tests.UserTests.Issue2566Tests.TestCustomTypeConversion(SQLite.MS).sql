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

