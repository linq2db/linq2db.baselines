﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
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
DisposeTransactionAsync
