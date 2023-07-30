BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @someValue  -- Int32
SET     @someValue = 3

SELECT
	@someValue,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= @someValue
UNION ALL
SELECT
	@someValue,
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > @someValue

