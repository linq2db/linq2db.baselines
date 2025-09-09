BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

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
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent] [t1]
SET
	[t1].[Value1] = @Value1
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT TOP 2
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

