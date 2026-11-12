-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @flag  -- Int32
SET     @flag = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] BAND @flag) = @flag

