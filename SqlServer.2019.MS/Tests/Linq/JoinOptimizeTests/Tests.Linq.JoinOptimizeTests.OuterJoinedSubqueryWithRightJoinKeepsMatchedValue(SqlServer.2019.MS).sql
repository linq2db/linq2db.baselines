-- SqlServer.2019.MS SqlServer.2019
SELECT
	[x].[ParentID],
	CASE
		WHEN [p].[ParentID] IS NULL THEN NULL
		WHEN [p].[Value1] > 4 THEN N'big'
		ELSE NULL
	END
FROM
	[Parent] [x]
		LEFT JOIN [Child] [s]
			RIGHT JOIN [Parent] [p] ON [s].[ParentID] = [p].[ParentID]
		ON [p].[ParentID] = [x].[ParentID]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[x].[ParentID],
	CASE
		WHEN [p].[ParentID] IS NULL THEN NULL
		WHEN [p].[Value1] > 4 THEN N'big'
		ELSE NULL
	END
FROM
	[Parent] [x]
		LEFT JOIN [Child] [s]
			RIGHT JOIN [Parent] [p] ON [s].[ParentID] = [p].[ParentID]
		ON [p].[ParentID] = [x].[ParentID]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[x].[ParentID],
	CASE
		WHEN [s].[ParentID] IS NULL AND [p].[ParentID] IS NULL THEN NULL
		WHEN [p].[Value1] > 4 THEN N'big'
		ELSE NULL
	END
FROM
	[Parent] [x]
		LEFT JOIN [Child] [s]
			RIGHT JOIN [Parent] [p] ON [s].[ParentID] = [p].[ParentID]
		ON [p].[ParentID] >= [x].[ParentID] AND [p].[ParentID] <= [x].[ParentID]

