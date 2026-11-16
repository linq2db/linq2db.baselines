-- SqlServer.2025
DECLARE @Value VarChar(20) -- AnsiString
SET     @Value = N'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

-- SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

