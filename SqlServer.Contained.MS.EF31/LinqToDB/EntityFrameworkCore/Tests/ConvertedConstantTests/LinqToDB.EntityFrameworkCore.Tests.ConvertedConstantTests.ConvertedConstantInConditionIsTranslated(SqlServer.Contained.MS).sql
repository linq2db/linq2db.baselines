-- SqlServer.2025
DECLARE @Homepage NVarChar(4000) -- String
SET     @Homepage = NULL
DECLARE @Homepage_1 NVarChar(4000) -- String
SET     @Homepage_1 = N'http://b/'

SELECT
	[x].[Name]
FROM
	[Profiles] [x]
WHERE
	IIF([x].[Name] = N'two', @Homepage, [x].[Homepage]) = @Homepage_1



