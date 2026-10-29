-- SQLite.Classic SQLite
UPDATE
	[TestBool]
SET
	[Value] = [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

