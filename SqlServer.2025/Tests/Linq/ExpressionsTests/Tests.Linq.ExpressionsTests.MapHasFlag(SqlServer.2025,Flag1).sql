-- SqlServer.2025
DECLARE @flag Int -- Int32
SET     @flag = 1

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	[t].[Flags] & @flag = @flag

