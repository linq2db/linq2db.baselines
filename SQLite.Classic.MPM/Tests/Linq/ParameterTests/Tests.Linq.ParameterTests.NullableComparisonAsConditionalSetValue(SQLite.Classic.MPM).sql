-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Id] > 0 THEN CASE
			WHEN [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL
				THEN 1
			ELSE 0
		END
		ELSE NULL
	END

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

