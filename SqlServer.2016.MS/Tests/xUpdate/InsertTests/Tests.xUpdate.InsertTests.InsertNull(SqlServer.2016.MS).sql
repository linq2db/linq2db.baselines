BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1001

