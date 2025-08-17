BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[ID] as [Id],
	[x].[BigIntValue] as [TestField]
FROM
	[LinqDataTypes] [x]
WHERE
	[x].[BigIntValue] = 0 AND [x].[ID] = 10 OR [x].[BigIntValue] = 1 AND [x].[ID] = 10

