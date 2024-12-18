﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ParentID Int -- Int32
SET     @ParentID = 11
DECLARE @Value1 Int -- Int32
SET     @Value1 = 11

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [param]
				LEFT JOIN [Parent] [a_Parent] ON [param].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = @ParentID AND
			[a_Parent].[ParentID] IS NOT NULL AND
			[a_Parent].[Value1] = @Value1 AND
			[a_Parent].[Value1] IS NOT NULL
	), 1, 0)

