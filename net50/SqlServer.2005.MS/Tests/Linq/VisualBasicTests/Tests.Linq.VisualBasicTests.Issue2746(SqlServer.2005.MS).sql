﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Local_SelectedValue Int -- Int32
SET     @Local_SelectedValue = 1

SELECT
	[w].[ParentID],
	[w].[ChildID],
	[w].[GrandChildID]
FROM
	[GrandChild] [w]
WHERE
	[w].[ChildID] IS NOT NULL AND [w].[ChildID] = @Local_SelectedValue

