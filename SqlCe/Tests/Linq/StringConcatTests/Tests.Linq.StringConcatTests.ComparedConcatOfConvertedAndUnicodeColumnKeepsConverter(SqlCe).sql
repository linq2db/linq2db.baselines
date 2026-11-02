-- SqlCe
DECLARE @bound NVarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) = @bound

-- SqlCe
DECLARE @bound NVarChar(5) -- String
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	@bound = ([p].[Conv] + [p].[Title])

-- SqlCe
SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	([p].[Conv] + [p].[Title]) IN ('x:c1T')

