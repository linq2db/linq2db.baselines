-- SqlCe
DECLARE @flag Int -- Int32
SET     @flag = 1

SELECT
	[t].[Id],
	[t].[Value] as [Value_1],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & @flag) = @flag

