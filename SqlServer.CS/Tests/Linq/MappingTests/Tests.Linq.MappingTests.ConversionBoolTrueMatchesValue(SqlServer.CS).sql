-- SqlServer.CS SqlServer.2025
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

