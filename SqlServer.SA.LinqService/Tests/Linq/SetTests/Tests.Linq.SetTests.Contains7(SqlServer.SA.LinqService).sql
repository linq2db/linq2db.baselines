﻿BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	IIF(11 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

