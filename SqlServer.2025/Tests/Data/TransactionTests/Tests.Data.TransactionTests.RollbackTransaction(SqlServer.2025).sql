﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1010

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
BeginTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

UPDATE
	[Parent]
SET
	[Value1] = 1012
WHERE
	[Parent].[ParentID] = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

