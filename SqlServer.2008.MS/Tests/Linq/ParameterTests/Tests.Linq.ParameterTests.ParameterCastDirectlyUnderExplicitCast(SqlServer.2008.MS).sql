-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

