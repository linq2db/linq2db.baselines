﻿BeforeExecute
--  SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	IIF(@p IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

BeforeExecute
--  SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	IIF(@p IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), 1, 0)

