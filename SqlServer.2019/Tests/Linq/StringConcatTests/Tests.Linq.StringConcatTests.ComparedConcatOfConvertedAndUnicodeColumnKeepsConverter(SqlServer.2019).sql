-- SqlServer.2019
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) = @bound

