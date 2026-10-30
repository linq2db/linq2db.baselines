-- SqlServer.2014
UPDATE
	[TestBool]
SET
	[Value] = IIF([TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL, 1, 0)

-- SqlServer.2014
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

