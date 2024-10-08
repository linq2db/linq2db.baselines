﻿BeforeExecute
-- SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[Value1]
	) <> 0 OR
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[Value1]
	) IS NULL

