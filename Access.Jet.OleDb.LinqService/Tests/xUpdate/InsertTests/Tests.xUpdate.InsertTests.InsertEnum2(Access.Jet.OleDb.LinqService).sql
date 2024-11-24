BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

