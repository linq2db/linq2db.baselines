BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

