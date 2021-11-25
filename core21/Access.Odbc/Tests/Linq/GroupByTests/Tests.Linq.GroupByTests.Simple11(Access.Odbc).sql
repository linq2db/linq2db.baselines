BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]
FROM
	[GrandChild] [selectParam]
GROUP BY
	[selectParam].[ParentID] + 1,
	[selectParam].[ChildID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

SELECT
	[elemParam].[ChildID]
FROM
	[GrandChild] [elemParam]
WHERE
	[elemParam].[ParentID] + 1 = ? AND [elemParam].[ChildID] = ?

