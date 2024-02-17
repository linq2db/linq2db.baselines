﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [_]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] = @id

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [_]
FROM
	[Parent] [_]
WHERE
	[_].[ParentID] > 1000

