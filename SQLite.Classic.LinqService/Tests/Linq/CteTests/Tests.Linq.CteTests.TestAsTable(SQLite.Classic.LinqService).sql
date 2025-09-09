BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

WITH [CTE1_] ([ParentID], [ChildID])
AS
(
	SELECT
		[t1].[ParentID],
		[t1].[ChildID]
	FROM
		[Child] [t1]
)
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[CTE1_] [t2]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

