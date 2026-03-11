-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022

UPDATE
	[Parent]
SET
	[Value1] = 1011
WHERE
	[Parent].[ParentID] = 1010

CommitTransaction
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

