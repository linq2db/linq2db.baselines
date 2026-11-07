-- SqlServer.CS.MS SqlServer.2025
UPDATE
	[TestBool]
SET
	[Value] = IIF([TestBool].[Id] > 0, IIF([TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL, 1, 0), NULL)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

