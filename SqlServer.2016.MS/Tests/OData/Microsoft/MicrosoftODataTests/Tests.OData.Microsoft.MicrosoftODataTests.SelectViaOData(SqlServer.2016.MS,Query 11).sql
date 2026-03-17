-- SqlServer.2016.MS SqlServer.2016

SELECT
	N'Title',
	[it].[Title],
	MAX([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

