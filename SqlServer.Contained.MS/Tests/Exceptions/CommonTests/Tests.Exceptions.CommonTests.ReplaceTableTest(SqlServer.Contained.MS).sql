﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 555

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @n

