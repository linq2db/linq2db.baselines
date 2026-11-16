-- SqlServer.2008
DECLARE @Value VarChar(20) -- AnsiString
SET     @Value = N'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

