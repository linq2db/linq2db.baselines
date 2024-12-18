﻿BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
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
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlCe
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = @ChildID
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
			[a_Parent].[Value1] IS NOT NULL AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

