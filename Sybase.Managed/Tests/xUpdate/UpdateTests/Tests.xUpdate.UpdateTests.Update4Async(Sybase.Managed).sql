﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [Child].[ChildID] + 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ChildID] = @id AND
			[a_Parent].[Value1] = 1 AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

