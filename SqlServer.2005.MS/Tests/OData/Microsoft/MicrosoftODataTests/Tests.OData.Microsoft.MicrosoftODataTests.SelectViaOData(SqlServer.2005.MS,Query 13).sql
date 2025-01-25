BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	N'Title',
	[it].[Title],
	COUNT(*)
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

