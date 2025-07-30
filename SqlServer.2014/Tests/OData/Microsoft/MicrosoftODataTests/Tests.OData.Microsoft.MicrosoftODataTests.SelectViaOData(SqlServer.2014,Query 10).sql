BeforeExecute
-- SqlServer.2014

SELECT
	N'Title',
	[it].[Title],
	MIN([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

