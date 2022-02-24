﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[selectParam].[ParentID] = [c_1].[ParentID]
			) > 3, 1, 0) as [Key_1]
		FROM
			[Parent] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p_1 Bit -- Boolean
SET     @p_1 = 0

SELECT
	[underscore].[ParentID],
	[underscore].[Value1]
FROM
	(
		SELECT
			IIF((
				SELECT
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[selectParam].[ParentID] = [c_1].[ParentID]
			) > 3, 1, 0) as [Key_1],
			[selectParam].[ParentID],
			[selectParam].[Value1]
		FROM
			[Parent] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p_1

