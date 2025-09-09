BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

WITH [CTE] ([ParentId], [Label])
AS
(
	SELECT
		[c_1].[ParentId],
		[c_1].[Label]
	FROM
		[TestFolder] [c_1]
	WHERE
		[c_1].[ParentId] IS NOT NULL
)
INSERT INTO [TestFolder]
(
	[Id],
	[Label]
)
SELECT
	X'3D667BBCDE0F27438F925D8CC3A11D11',
	[parent].[Label] || '/' || [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

