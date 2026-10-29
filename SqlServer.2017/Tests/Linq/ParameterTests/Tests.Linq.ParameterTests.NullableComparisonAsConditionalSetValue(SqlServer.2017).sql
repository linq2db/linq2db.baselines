-- SqlServer.2017
UPDATE
	[TestBool]
SET
	[Value] = IIF([TestBool].[Id] > 0, IIF([TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL, 1, 0), NULL)

-- SqlServer.2017
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

