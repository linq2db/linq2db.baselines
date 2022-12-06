﻿BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
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
-- Access AccessOleDb

UPDATE
	[Parent] [t1]
SET
	[t1].[Value1] = 1012
WHERE
	[t1].[ParentID] = 1010

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

