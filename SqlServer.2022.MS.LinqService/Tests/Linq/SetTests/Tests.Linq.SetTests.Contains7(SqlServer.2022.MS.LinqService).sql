﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	IIF(11 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

