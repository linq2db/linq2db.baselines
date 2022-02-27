BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

