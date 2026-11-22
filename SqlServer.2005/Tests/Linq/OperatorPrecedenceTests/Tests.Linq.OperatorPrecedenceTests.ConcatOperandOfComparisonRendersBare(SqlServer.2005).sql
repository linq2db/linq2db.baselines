-- SqlServer.2005
DECLARE @value NVarChar(10) -- String
SET     @value = N'x'

SELECT
	[r].[Id]
FROM
	[ConcatRow] [r]
WHERE
	Coalesce([r].[S], N'') + N'x' = @value

