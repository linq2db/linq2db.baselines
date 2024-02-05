BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[lw_Issue3975TestClass].[ParentID],
	[detail].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[ParentID]
		FROM
			(
				SELECT TOP 1
					[t1].[ParentID]
				FROM
					[Parent] [t1]
			) [t2]
	) [lw_Issue3975TestClass]
		INNER JOIN [Child] [detail] ON [lw_Issue3975TestClass].[ParentID] = [detail].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[ParentID]
FROM
	[Parent] [t1]

