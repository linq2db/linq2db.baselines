-- SqlServer.CS SqlServer.2025
SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

