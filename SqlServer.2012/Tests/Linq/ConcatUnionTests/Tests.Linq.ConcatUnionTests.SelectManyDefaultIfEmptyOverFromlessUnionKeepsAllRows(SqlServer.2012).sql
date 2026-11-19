-- SqlServer.2012
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

