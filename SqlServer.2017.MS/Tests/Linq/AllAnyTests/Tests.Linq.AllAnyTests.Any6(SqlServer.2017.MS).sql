﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF( EXISTS (
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 3
	), 1, 0)

