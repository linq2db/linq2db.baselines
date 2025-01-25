BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	N'Title',
	[it].[Title],
	COUNT(*)
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

