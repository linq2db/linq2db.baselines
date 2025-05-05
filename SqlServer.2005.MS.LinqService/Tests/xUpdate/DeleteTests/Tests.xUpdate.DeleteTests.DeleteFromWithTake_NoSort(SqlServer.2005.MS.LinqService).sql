﻿BeforeExecute
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
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002
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
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1003
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
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @p Int -- Int32
SET     @p = 2

DELETE [p]
FROM
	(
		SELECT TOP (@take)
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[ParentID] > 1000
	) [p]
WHERE
	[p].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (@p)
					[c_2].[ParentID]
				FROM
					[Parent] [c_2]
				WHERE
					[c_2].[ParentID] > 1000
			) [t1]
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

