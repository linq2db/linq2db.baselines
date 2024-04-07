﻿BeforeExecute
-- SqlServer.2014
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2014

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1001

