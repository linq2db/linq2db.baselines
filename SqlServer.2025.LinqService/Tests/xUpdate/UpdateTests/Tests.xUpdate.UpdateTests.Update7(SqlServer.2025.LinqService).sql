﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Parent]
SET
	[Value1] = @Value1
WHERE
	[Parent].[ParentID] = @id

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

