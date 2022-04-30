BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	([Child] [p]
		INNER JOIN [Parent] [c_1] ON ([c_1].[ParentID] = [p].[ParentID]))
		LEFT JOIN [Parent] [a_Parent] ON ([p].[ParentID] = [a_Parent].[ParentID])
SET
	[p].[ChildID] = [p].[ChildID] + 1,
	[p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ChildID] = ? AND [a_Parent].[Value1] = 1

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ChildID Int -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = ?

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

