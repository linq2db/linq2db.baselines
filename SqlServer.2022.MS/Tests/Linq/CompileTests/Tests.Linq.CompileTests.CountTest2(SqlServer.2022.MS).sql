﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

