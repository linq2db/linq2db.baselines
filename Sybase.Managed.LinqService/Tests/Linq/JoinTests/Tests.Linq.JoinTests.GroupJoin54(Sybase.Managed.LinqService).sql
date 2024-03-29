﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[_ch].[ParentID],
	[_ch].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [_ch] ON [_ch].[ParentID] = [key_data_result].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	),
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

