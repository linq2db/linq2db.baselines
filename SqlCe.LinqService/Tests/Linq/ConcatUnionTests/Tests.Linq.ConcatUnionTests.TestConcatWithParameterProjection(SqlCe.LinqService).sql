BeforeExecute
-- SqlCe
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Int -- Int32
SET     @someValue_1 = 3

SELECT
	CAST(@someValue AS Int) as [Value_1],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= @someValue_1
UNION ALL
SELECT
	CAST(@someValue AS Int) as [Value_1],
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > @someValue_1

