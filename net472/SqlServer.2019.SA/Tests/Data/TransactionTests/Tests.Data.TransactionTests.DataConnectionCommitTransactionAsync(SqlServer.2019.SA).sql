﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
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
CommitTransaction
BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [_]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = 1010

