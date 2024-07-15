BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1],
			(
				SELECT TOP 1
					[r].[GuidValue]
				FROM
					[LinqDataTypes] [r]
			) as [GuidValue]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[GuidValue] IS NOT NULL

