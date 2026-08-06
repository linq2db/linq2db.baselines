-- SQLite.MS SQLite
DECLARE @name  -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Value] = CAST(@name AS NVarChar(11))

-- SQLite.MS SQLite
DECLARE @name  -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Money] = CAST(@name AS Decimal)

