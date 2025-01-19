BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	N'Title',
	[it].[Title],
	COUNT(*)
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

