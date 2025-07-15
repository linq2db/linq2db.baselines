BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Value1] IS NOT NULL THEN [p].[Value1]
		ELSE 100
	END
FROM
	[Parent] [p]

