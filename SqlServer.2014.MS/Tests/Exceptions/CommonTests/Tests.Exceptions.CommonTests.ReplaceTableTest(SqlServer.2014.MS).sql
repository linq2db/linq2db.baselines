BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 555
DECLARE @n_1 Int -- Int32
SET     @n_1 = 555

INSERT INTO [Parent1]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@n,
	@n_1
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 555
DECLARE @n_1 Int -- Int32
SET     @n_1 = 555

INSERT INTO [Parent1]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@n,
	@n_1
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 555

DELETE [p]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @n

