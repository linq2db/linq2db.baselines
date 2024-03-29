﻿BeforeExecute
-- SqlServer.2019
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
BeginTransaction
BeforeExecute
-- SqlServer.2019

UPDATE
	[t1]
SET
	[t1].[Value1] = 1012
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1010

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

