﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 5000

SELECT TOP (@take)
	[t].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	), 1, 0),
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100
	),
	(
		SELECT TOP (1)
			[c_4].[ParentID]
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100 AND
			[c_4].[ParentID] > 0
		ORDER BY
			[c_4].[ChildID]
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
			ORDER BY
				[c_1].[ChildID]
		) [t1]
WHERE
	[t].[ParentID] > 0

