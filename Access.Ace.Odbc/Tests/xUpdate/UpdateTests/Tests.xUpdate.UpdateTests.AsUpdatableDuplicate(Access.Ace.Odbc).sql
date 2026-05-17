-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > 1000

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

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
SET
	[c_1].[ChildID] = [c_1].[ChildID] + 2
WHERE
	[c_1].[ChildID] = ? AND [a_Parent].[Value1] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1003

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

