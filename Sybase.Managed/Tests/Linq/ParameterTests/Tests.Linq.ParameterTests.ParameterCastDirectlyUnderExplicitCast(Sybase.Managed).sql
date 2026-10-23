-- Sybase.Managed Sybase
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Value] = CAST(@name AS NVarChar(11))

-- Sybase.Managed Sybase
DECLARE @name Integer -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Money] = CAST(@name AS DECIMAL(18, 10))

