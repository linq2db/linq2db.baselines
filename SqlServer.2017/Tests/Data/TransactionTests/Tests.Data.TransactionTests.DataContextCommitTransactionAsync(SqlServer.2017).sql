BeforeExecute
BeginTransactionAsync
BeforeExecute
-- SqlServer.2017 (asynchronously)
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
CommitTransactionAsync
BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1010

