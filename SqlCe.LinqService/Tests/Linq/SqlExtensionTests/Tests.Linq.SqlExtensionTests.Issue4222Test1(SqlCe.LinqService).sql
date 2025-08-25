BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value] as [Value_1]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = 'default' AND [e].[Value] = 2007

