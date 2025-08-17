BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

