-- SqlServer.2019.MS SqlServer.2019
DECLARE @Value VarChar(20) -- AnsiString
SET     @Value = N'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

