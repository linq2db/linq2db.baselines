BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	N'Title',
	[it].[Title],
	MAX([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

