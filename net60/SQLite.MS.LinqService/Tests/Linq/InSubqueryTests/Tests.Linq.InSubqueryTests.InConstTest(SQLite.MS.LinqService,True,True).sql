BeforeExecute
-- SQLite.MS SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Parent] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [param]
		WHERE
			[param].[Value1] = 1
	)

