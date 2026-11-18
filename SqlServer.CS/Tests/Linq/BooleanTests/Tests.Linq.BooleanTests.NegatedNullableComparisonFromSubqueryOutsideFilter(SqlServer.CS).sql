-- SqlServer.CS SqlServer.2025
SELECT
	[c_1].[ChildID],
	IIF([x_1].[c1] IS NULL, NULL, [x_1].[ParentID])
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				IIF([x].[Value1] = 1, 1, 0) as [c1],
				[x].[ParentID]
			FROM
				[Parent] [x]
			WHERE
				[x].[Value1] <> 1 OR [x].[Value1] IS NULL
		) [x_1] ON [x_1].[ParentID] = [c_1].[ParentID]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[x].[ParentID],
	IIF([x].[Value1] <> 1 OR [x].[Value1] IS NULL, 1, 0)
FROM
	[Parent] [x]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] <> 1 OR [x].[Value1] IS NULL

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.CS SqlServer.2025
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] <> 1 OR [x].[Value1] IS NULL

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

