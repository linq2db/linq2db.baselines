-- SqlServer.2012
SELECT
	[p].[ParentID],
	[x].[X]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				[p].[Value1] as [X]
			UNION ALL
			SELECT
				CAST(7 AS Int) as [X]
		) [x]

