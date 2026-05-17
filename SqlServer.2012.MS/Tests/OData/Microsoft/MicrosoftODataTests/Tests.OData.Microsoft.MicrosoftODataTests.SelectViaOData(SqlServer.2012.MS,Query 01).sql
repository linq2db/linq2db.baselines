-- SqlServer.2012.MS SqlServer.2012

SELECT
	N'Title',
	[it].[Title],
	SUM([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

