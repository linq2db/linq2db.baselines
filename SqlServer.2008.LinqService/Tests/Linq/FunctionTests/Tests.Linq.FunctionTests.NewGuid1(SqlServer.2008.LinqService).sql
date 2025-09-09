BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

