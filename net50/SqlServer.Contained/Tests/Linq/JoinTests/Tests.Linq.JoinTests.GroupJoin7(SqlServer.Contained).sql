﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	[key_data_result].[ParentID],
	[_gjd_c].[ParentID],
	[_gjd_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [_gjd_c] ON [_gjd_c].[ParentID] - @ParentID = [key_data_result].[ParentID]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

