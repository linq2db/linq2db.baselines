BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	[x].[ChildID] IN (
		SELECT
			Max([x_1].[ChildID])
		FROM
			[Child] [x_1]
		GROUP BY
			[x_1].[ParentID]
	)

