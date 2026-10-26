-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [p] ON [p].[Value1] = [c_1].[ParentID] AND [c_1].[ChildID] <> @id

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

