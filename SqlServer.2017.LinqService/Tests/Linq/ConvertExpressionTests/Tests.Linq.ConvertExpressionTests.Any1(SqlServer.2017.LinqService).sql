﻿BeforeExecute
-- SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					[Child] [c_1]
				WHERE
					[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
			)
	), 1, 0)

