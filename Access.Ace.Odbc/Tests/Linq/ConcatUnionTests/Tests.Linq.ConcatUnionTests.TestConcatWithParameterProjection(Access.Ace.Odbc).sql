-- Access.Ace.Odbc AccessODBC
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue Int -- Int32
SET     @someValue = 3

SELECT
	?,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= ?
UNION ALL
SELECT
	?,
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > ?

