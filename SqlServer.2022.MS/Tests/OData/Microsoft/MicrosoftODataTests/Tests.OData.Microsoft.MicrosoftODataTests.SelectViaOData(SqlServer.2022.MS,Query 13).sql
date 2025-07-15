BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	N'Title',
	[it].[Title],
	COUNT(*)
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

