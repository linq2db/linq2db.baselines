-- SqlServer.2017

SELECT
	N'Title',
	[it].[Title],
	COUNT(DISTINCT [it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

