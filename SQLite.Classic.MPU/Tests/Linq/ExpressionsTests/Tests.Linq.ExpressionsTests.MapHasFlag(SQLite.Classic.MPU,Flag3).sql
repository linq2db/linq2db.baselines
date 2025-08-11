BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @flag  -- Object
SET     @flag = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & CAST(@flag AS INTEGER)) <> 0

