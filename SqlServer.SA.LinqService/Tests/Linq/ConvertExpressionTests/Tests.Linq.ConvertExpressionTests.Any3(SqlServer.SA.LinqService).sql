﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
			)
	), 1, 0)

