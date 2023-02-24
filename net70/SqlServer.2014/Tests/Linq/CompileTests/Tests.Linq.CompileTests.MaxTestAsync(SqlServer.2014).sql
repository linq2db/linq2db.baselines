﻿BeforeExecute
-- SqlServer.2014 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	Max([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2014 (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = -1

SELECT
	Max([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

