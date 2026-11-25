-- SqlServer.2005.MS SqlServer.2005
SELECT
	[p].[ParentID],
	[x].[X]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				CAST(1 AS Int) as [X]
			UNION ALL
			SELECT
				CAST(2 AS Int) as [X]
		) [x] ON 1=1

