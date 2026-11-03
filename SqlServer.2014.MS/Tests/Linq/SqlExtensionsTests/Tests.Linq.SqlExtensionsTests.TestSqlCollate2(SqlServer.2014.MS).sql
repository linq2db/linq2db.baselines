-- SqlServer.2014.MS SqlServer.2014
SELECT
	N'1' + CAST([t1].[FirstName] COLLATE Albanian_CI_AS AS NVarChar(Max)) + N'2'
FROM
	[Person] [t1]

