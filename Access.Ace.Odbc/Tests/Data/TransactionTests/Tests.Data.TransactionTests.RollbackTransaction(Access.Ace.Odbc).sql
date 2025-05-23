﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
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
-- Access.Ace.Odbc AccessODBC

UPDATE
	[Parent] [t]
SET
	[t].[Value1] = 1012
WHERE
	[t].[ParentID] = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

