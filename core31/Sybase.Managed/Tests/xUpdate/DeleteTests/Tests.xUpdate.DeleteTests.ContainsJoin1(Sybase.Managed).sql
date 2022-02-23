﻿BeforeExecute
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
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1000

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1000
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1000

DELETE FROM [Parent]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = @id AND [c_1].[ChildID] NOT IN (1000, 1001)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1000

DELETE FROM [Parent]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = @id AND [c_1].[ChildID] NOT IN (1002)

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

