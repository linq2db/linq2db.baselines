BeforeExecute
-- SQLite.Classic SQLite

WITH [CTE_1] AS
(
	SELECT
		*
	FROM
		(
			SELECT DISTINCT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 1
		) [t1]
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [t2]

