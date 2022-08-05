﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	COUNT([left_1].[ParentID]),
	COUNT([p_1].[ParentID]),
	COUNT(*)
FROM
	(
		SELECT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> @id
	) [left_1]
		FULL JOIN [Parent] [p_1] ON [p_1].[ParentID] = [left_1].[ParentID]

