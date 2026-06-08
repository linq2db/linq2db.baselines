-- Sybase.Managed Sybase

SELECT
	[a].[ParentID]
FROM
	[Parent] [a]
		INNER JOIN [Child] [t] ON [a].[ParentID] IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[GrandChild] [c_1]
			WHERE
				[c_1].[ChildID] = [t].[ChildID]
		)

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

