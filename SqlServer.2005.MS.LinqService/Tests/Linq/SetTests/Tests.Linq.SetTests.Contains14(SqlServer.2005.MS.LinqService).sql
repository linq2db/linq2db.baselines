﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID
		)
			THEN 1
		ELSE 0
	END

