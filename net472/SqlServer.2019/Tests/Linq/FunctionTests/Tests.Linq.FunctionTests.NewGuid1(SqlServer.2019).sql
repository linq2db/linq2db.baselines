BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

