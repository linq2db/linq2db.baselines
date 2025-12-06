-- SqlServer.2019.MS SqlServer.2019
DECLARE @t NVarChar(4000) -- String
SET     @t = N'A'

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1]
WHERE
	[x_1].[FirstName] = @t

