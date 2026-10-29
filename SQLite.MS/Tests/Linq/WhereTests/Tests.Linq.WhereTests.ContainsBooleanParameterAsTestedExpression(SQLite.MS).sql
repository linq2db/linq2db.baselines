-- SQLite.MS SQLite
DECLARE @flag Integer -- Boolean
SET     @flag = 1

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

