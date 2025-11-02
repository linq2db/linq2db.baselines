-- SqlCe

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WHERE
	[t].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (2)
					[x].[ParentID]
				FROM
					(
						SELECT
							MAX([g_1].[ChildID]) as [Max_1],
							[g_1].[ParentID]
						FROM
							[Child] [g_1]
						GROUP BY
							[g_1].[ParentID]
					) [x]
				ORDER BY
					[x].[Max_1] DESC
			) [t1]
	)

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

