-- SQLite.MS SQLite
UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL
			THEN 1
		ELSE 0
	END

-- SQLite.MS SQLite
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

