BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

