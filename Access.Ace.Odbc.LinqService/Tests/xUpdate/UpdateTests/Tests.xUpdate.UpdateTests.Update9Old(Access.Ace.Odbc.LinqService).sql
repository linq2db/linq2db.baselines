BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	([Child] [c_1]
		INNER JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID]))
		INNER JOIN [Parent] [p] ON ([c_1].[ParentID] = [p].[ParentID])
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 1,
	[c_1].[ParentID] = [p].[ParentID]
WHERE
	[c_1].[ChildID] = ? AND [a_Parent].[Value1] = 1

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

