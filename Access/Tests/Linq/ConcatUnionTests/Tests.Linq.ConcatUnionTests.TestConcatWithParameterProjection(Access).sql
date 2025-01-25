BeforeExecute
-- Access AccessOleDb
DECLARE @someValue Integer -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Integer -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_2 Integer -- Int32
SET     @someValue_2 = 3
DECLARE @someValue_3 Integer -- Int32
SET     @someValue_3 = 3

SELECT
	CVar(@someValue),
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= CVar(@someValue_1)
UNION ALL
SELECT
	CVar(@someValue_2),
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > CVar(@someValue_3)

