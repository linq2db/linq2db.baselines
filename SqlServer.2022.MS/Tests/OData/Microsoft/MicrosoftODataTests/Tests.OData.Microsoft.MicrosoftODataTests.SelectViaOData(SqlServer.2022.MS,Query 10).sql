-- SqlServer.2022.MS SqlServer.2022

SELECT
	N'Title',
	[it].[Title],
	MIN([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

