-- SqlServer.2017.MS SqlServer.2017
DECLARE @Value VarChar(20) -- AnsiString
SET     @Value = N'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Gender]
FROM
	[ConvertedGenderRow] [t1]

