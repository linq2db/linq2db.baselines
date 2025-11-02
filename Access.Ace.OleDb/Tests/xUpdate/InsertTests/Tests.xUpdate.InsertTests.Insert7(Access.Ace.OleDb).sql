-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	@id,
	@ParentID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

