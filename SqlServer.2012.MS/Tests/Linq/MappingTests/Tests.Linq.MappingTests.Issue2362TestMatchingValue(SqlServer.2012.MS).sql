-- SqlServer.2012.MS SqlServer.2012
DECLARE @value VarChar(4) -- AnsiString
SET     @value = N'+'

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[Issue2362Table] [r]
WHERE
	[r].[Value] = @value
ORDER BY
	[r].[Id]

