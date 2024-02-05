BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [t1]
WHERE
	[t1].[ParentID] >= 1000

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
	[ParentID]
)
VALUES
(
	1001
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [c_2] ON [c_1].[ParentID] = [c_2].[ParentID] AND [c_1].[ChildID] = [c_2].[ChildID]
WHERE
	[p].[ParentID] IN (1001)

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

