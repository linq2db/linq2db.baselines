BeforeExecute
-- SQLite.Classic SQLite
DECLARE @container_Value2 NVarChar(11) -- String
SET     @container_Value2 = 'Hello World'

SELECT
	[x].[Id],
	[x].[Value]
FROM
	[Issue2546Class] [x]
WHERE
	[x].[Value] = @container_Value2

