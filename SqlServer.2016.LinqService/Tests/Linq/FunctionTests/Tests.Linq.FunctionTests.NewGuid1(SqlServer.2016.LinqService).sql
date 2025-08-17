BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

