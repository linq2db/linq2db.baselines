﻿BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
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
	?,
	?
)

BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

UPDATE
	[Parent] [t1]
SET
	[t1].[Value1] = 1012
WHERE
	[t1].[ParentID] = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

SELECT TOP 1
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

