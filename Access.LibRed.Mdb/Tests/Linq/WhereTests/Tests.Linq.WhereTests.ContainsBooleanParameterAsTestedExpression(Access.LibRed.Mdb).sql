-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @flag  -- Boolean
SET     @flag = True

SELECT
	[t].[ID]
FROM
	[LinqDataTypes] [t]
WHERE
	@flag IN ([t].[BoolValue])

