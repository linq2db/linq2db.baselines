BeforeExecute
-- SQLite.MS SQLite
DECLARE @flag  -- Object
SET     @flag = 1

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & CAST(@flag AS INTEGER)) <> 0

