-- SqlServer.2005.MS SqlServer.2005
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

