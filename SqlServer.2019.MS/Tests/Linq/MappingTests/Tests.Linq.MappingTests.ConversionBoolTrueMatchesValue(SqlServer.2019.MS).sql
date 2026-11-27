-- SqlServer.2019.MS SqlServer.2019
DECLARE @value VarChar(4) -- AnsiString
SET     @value = N'+'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[BoolStringConversionTable] [r]
WHERE
	[r].[Value] = @value
ORDER BY
	[r].[Id]

