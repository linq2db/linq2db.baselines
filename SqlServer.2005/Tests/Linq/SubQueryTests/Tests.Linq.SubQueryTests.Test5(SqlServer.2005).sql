﻿BeforeExecute
-- SqlServer.2005
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
			CASE
				WHEN [id].[Value1] IS NULL
					THEN [id].[ParentID]
				ELSE [id].[ParentID] + 1
			END as [c1]
		FROM
			[Parent] [id]
		WHERE
			[id].[ParentID] IN (1, 2)
	) [t1]

