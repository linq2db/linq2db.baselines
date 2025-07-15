BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 1000,NULL UNION ALL
SELECT 1001,NULL

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1000 AND [p].[Value1] IS NULL OR [p].[ParentID] = 1001 AND [p].[Value1] IS NULL

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

