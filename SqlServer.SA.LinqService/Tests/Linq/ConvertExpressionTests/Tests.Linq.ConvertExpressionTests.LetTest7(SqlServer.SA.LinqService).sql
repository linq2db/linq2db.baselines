﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 5000

SELECT TOP (@take)
	[t].[ParentID],
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100
	), 1, 0),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100
	),
	[t1].[ParentID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100 AND
				[c_1].[ParentID] > 0
			ORDER BY
				[c_1].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
			ORDER BY
				[c_2].[ChildID]
		) [t2]
WHERE
	[t].[ParentID] > 0

