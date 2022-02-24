﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5000
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT TOP (@take)
	[t].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
	), 1, 0),
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	),
	[t1].[First1],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[c_3].[ParentID] as [First1]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100 AND
				[c_3].[ParentID] > 0
			ORDER BY
				[c_3].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_2)
				[c_4].[ParentID],
				[c_4].[ChildID]
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100
			ORDER BY
				[c_4].[ChildID]
		) [t2]
WHERE
	[t].[ParentID] > 0

