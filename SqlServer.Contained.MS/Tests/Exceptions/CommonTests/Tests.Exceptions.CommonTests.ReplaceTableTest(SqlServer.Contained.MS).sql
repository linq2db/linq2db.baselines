BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 555

INSERT INTO [Parent1]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@n,
	@n
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 555

INSERT INTO [Parent1]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@n,
	@n
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 555

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @n

