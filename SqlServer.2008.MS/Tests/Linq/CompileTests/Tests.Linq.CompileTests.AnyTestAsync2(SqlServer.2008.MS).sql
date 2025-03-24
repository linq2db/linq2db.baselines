﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = @p
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = @p
		)
			THEN 1
		ELSE 0
	END

