-- SqlServer.2025
SELECT
	N'1' || CAST([t1].[FirstName] COLLATE Albanian_CI_AS AS NVarChar(Max)) || N'2'
FROM
	[Person] [t1]

