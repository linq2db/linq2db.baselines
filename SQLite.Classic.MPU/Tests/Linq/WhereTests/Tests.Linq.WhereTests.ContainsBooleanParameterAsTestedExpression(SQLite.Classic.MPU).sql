-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @flag  -- Boolean
SET     @flag = 1

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

