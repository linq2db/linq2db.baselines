-- SqlServer.2008
DECLARE @flag Int -- Int32
SET     @flag = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	[t].[Flags] & @flag = @flag

