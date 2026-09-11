-- SqlServer.2017.MS SqlServer.2017
DECLARE @name Int -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Value] = CAST(@name AS NVarChar(11))

-- SqlServer.2017.MS SqlServer.2017
DECLARE @name Int -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Money] = CAST(@name AS Decimal(18, 10))

