-- SqlServer.2016.MS SqlServer.2016
DECLARE @value NVarChar(10) -- String
SET     @value = N'x'

SELECT
	[r].[Id]
FROM
	[ConcatRow] [r]
WHERE
	Coalesce([r].[S], N'') + N'x' = @value

