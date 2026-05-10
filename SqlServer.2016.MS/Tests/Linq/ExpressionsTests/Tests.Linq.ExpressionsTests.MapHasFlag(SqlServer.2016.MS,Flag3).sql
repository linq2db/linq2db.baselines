-- SqlServer.2016.MS SqlServer.2016
DECLARE @flag Int -- Int32
SET     @flag = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & @flag) = @flag

