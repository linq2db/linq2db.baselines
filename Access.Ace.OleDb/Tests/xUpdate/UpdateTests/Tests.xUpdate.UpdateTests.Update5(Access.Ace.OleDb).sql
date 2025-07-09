BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
SET
	[c_1].[ChildID] = @ChildID
WHERE
	[c_1].[ChildID] = @id AND [a_Parent].[Value1] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p

