﻿BeforeExecute
-- SqlServer.2014

SELECT
	IIF(NOT EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	), 1, 0)

