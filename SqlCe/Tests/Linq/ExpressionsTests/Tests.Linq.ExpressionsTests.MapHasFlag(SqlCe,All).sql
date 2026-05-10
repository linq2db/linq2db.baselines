-- SqlCe
DECLARE @flag Int -- Int32
SET     @flag = 7

SELECT
	[t].[Id],
	[t].[Value] as [Value_1],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & @flag) = @flag

