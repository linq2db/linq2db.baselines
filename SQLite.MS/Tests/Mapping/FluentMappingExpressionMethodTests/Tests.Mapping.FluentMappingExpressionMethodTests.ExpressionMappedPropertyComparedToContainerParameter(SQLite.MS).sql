-- SQLite.MS SQLite
DECLARE @Value2 NVarChar(11) -- String
SET     @Value2 = 'Hello World'

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[ContainerParameterEntity] [x]
WHERE
	[x].[Value] = @Value2

