﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	IIF(NOT EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= @n
	), 1, 0)

