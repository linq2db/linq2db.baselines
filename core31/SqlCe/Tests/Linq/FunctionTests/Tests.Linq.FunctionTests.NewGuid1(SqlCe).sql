BeforeExecute
-- SqlCe

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] <> NewID()

