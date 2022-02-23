BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

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
	[Parent] [t1]
WHERE
	([t1].[ParentID] = 1000 AND [t1].[Value1] IS NULL OR [t1].[ParentID] = 1001 AND [t1].[Value1] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

