﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

