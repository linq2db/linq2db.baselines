﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ParentID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t].[ParentID] AND [c_1].[ChildID] > -100
	), True, False),
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ParentID] = [t].[ParentID] AND [c_2].[ChildID] > -100
	),
	(
		SELECT TOP 1
			[c_3].[ParentID]
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [t].[ParentID] AND [c_3].[ChildID] > -100 AND
			[c_3].[ParentID] > 0
		ORDER BY
			[c_3].[ChildID]
	),
	(
		SELECT TOP 1
			[c_4].[ParentID]
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [t].[ParentID] AND [c_4].[ChildID] > -100
		ORDER BY
			[c_4].[ChildID]
	),
	(
		SELECT TOP 1
			[c_5].[ChildID]
		FROM
			[Child] [c_5]
		WHERE
			[c_5].[ParentID] = [t].[ParentID] AND [c_5].[ChildID] > -100
		ORDER BY
			[c_5].[ChildID]
	)
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] > 0

