﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @testValue Int -- Int32
SET     @testValue = 3

SELECT
	[t1].[c1],
	(
		SELECT
			Count(*)
		FROM
			[Child] [p]
		WHERE
			[p].[ParentID] = [t1].[c1]
	),
	(
		SELECT
			Count(*)
		FROM
			[Child] [p_1]
		WHERE
			[p_1].[ParentID] = [t1].[c1] AND [p_1].[ParentID] = @testValue
	)
FROM
	(
		SELECT DISTINCT
			IIF([id].[Value1] IS NULL, [id].[ParentID], [id].[ParentID] + 1) as [c1]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [t1]

