-- SqlServer.2025.MS SqlServer.2025
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] || [p].[Title]) = @bound

-- SqlServer.2025.MS SqlServer.2025
DECLARE @bound VarChar(20) -- AnsiString
SET     @bound = N'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	@bound = ([p].[Conv] || [p].[Title])

-- SqlServer.2025.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] || [p].[Title]) IN (N'x:c1T')

