﻿BeforeExecute
BeginTransactionAsync
BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
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
CommitTransactionAsync
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1010

