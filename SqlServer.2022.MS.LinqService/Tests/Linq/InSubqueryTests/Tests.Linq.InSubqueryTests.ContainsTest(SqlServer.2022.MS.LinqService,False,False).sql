﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	IIF(1 IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

