﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @p
	), 1, 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @p
	), 1, 0)

