BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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
-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[Parent]
SET
	[Value1] = 1012
WHERE
	[Parent].[ParentID] = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

