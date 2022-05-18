﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
	), 1, 0),
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100
	),
	[t1].[ParentID],
	[t1].[ChildID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_3].[ParentID],
				[c_3].[ChildID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100 AND
				[c_3].[ParentID] > 0
			ORDER BY
				[c_3].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[c_4].[ParentID],
				[c_4].[ChildID]
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
			ORDER BY
				[c_4].[ChildID]
		) [t2]

