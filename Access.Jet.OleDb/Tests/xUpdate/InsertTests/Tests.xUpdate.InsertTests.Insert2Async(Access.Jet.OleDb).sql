BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

