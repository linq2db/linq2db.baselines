BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

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
	'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',
	[parent].[Label] + N'/' + [child].[Label]
FROM
	[CTE] [child]
		INNER JOIN [TestFolder] [parent] ON [child].[ParentId] = [parent].[Id]

