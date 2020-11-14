BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Int -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_2 Int -- Int32
SET     @someValue_2 = 3
DECLARE @someValue_3 Int -- Int32
SET     @someValue_3 = 3

SELECT
	CVar(?),
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= ?
UNION ALL
SELECT
	CVar(?),
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > ?

