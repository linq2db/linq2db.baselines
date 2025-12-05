-- SqlServer.2025 SqlServer.2022

SELECT
	N'Title',
	[it].[Title],
	MAX([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

