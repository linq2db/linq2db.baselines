﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id AND [_].[Value1] = @Value1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

