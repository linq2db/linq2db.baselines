BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1001

