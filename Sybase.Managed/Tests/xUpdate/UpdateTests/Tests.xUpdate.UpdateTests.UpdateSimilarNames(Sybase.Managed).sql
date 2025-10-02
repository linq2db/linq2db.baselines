BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	20000,
	20000
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 20000

UPDATE
	[Child]
SET
	[ParentID] = @ParentID
FROM
	[Parent] [child_1]
WHERE
	[child_1].[Value1] = 20000 AND [Child].[ParentID] = [child_1].[ParentID]

