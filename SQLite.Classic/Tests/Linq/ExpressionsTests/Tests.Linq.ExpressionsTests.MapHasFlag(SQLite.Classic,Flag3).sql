-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & @p) <> 0

