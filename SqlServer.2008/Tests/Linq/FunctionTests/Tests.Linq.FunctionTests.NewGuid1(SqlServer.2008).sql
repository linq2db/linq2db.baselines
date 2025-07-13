BeforeExecute
-- SqlServer.2008

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

