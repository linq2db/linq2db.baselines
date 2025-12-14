-- SqlServer.2014

SELECT
	[t1].[Name],
	[t1].[Title],
	[t1].[Value_1]
FROM
	(
		SELECT
			MIN([it].[YearsExperience]) as [Value_1],
			N'Title' as [Name],
			[it].[Title]
		FROM
			[odata_person] [it]
		GROUP BY
			[it].[Title]
	) [t1]
ORDER BY
	[t1].[Value_1]

