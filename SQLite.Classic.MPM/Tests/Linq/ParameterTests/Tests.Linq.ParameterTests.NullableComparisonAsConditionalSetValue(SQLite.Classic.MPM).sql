-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Id] > 0 THEN [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL
		ELSE NULL
	END

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

