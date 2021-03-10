BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[c1],
	[t1].[ChildID]
FROM
	(
		SELECT
			[selectParam].[ParentID] + 1 as [c1],
			[selectParam].[ChildID]
		FROM
			[GrandChild] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[ChildID]

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
	([elemParam].[ParentID] + 1 = ? AND [elemParam].[ChildID] = ?)

