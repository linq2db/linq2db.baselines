﻿BeforeExecute
-- SqlServer.2016

SELECT
	IIF(11 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

