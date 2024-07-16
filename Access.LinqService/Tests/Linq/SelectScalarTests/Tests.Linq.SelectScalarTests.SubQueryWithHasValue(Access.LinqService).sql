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
					[r].[Value1]
				FROM
					[Parent] [r]
			) as [Value1_1]
		FROM
			[Parent] [t1]
	) [t2]
WHERE
	[t2].[Value1_1] IS NOT NULL

