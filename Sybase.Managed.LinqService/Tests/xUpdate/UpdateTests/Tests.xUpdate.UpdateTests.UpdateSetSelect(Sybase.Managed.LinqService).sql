﻿BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[Parent]
SET
	[ParentID] = (
		SELECT
			[c_4].[ParentID] + 1000
		FROM
			[Parent] [p_1]
				INNER JOIN [Child] [c_3] ON [p_1].[ParentID] = [c_3].[ParentID]
				LEFT JOIN [Child] [c_4] ON [c_4].[ChildID] = 11
		WHERE
			[p_1].[ParentID] = 1 AND [Parent].[ParentID] = [p_1].[ParentID] AND
			([Parent].[Value1] = [p_1].[Value1] OR [Parent].[Value1] IS NULL AND [p_1].[Value1] IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				LEFT JOIN [Child] [c_2] ON [c_2].[ChildID] = 11
		WHERE
			[p].[ParentID] = 1 AND [Parent].[ParentID] = [p].[ParentID] AND
			([Parent].[Value1] = [p].[Value1] OR [Parent].[Value1] IS NULL AND [p].[Value1] IS NULL)
	)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

UPDATE
	[Parent]
SET
	[ParentID] = @ParentID
WHERE
	[Parent].[ParentID] = 1001

