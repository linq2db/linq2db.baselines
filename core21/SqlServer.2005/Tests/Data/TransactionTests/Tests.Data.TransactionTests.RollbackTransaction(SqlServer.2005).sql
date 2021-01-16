﻿BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1010

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
-- SqlServer.2005

UPDATE
	[t1]
SET
	[t1].[Value1] = 1012
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1010

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

