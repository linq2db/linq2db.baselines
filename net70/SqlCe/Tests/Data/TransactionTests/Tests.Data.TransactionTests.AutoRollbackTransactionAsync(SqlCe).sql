﻿BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe

UPDATE
	[Parent]
SET
	[Parent].[Value1] = 1012
WHERE
	[Parent].[ParentID] = 1010

BeforeExecute
RollbackTransactionAsync
BeforeExecute
-- SqlCe (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

