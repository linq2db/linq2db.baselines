﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1001

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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

UPDATE
	[t1]
SET
	[t1].[Value1] = @Value1
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001

SELECT TOP (@take)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

