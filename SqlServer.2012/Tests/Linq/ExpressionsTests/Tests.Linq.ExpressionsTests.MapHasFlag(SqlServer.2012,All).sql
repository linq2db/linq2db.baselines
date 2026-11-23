-- SqlServer.2012
DECLARE @flag Int -- Int32
SET     @flag = 7

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	[t].[Flags] & @flag = @flag

