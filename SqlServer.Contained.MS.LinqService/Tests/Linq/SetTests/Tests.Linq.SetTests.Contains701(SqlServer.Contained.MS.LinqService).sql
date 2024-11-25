﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 11
DECLARE @Value1 Int -- Int32
SET     @Value1 = 11

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [param]
				LEFT JOIN [Parent] [a_Parent] ON [param].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = @ParentID AND [a_Parent].[Value1] = @Value1
	), 1, 0)

