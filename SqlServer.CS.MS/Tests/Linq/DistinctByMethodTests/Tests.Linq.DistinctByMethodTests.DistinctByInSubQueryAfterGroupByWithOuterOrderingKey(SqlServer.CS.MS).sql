-- SqlServer.CS.MS SqlServer.2025
SELECT
	Coalesce((
		SELECT
			SUM([t1].[Key_1])
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[Key_1] % 2 ORDER BY [e].[Key_1]) as [RowNumber],
					[e].[Key_1]
				FROM
					(
						SELECT DISTINCT
							[g_1].[ChildID] as [Key_1]
						FROM
							[Child] [g_1]
						WHERE
							[g_1].[ParentID] = [p].[ParentID]
					) [e]
			) [t1]
		WHERE
			[t1].[RowNumber] = 1
	), 0)
FROM
	[Parent] [p]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

