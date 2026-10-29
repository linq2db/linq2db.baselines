-- SqlServer.2017.MS SqlServer.2017
UPDATE
	[TestBool]
SET
	[Value] = IIF([TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL, 1, 0)

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

