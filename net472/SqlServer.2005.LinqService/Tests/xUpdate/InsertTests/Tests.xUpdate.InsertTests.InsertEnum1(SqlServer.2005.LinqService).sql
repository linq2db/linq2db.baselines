BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2005
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	1001,
	@Value1
)

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

