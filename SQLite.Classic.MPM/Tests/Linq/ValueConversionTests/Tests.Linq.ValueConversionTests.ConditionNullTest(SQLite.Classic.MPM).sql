-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CASE
		WHEN [i].[item] = 0 THEN NULL
		ELSE [p].[ParentID]
	END,
	[p].[Value1]
FROM
	[Parent] [p],
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(0), (1)
		) [i]
WHERE
	CASE
		WHEN [i].[item] = 0 THEN NULL
		ELSE [p].[ParentID]
	END = [p].[Value1] OR
	[i].[item] = 0 AND [p].[Value1] IS NULL

