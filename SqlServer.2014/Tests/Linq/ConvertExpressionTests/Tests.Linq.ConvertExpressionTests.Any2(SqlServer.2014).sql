﻿BeforeExecute
-- SqlServer.2014

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

