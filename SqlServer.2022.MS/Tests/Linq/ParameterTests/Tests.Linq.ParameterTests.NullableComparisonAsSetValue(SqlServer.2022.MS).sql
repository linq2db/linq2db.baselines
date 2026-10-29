-- SqlServer.2022.MS SqlServer.2022
UPDATE
	[TestBool]
SET
	[Value] = IIF([TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL, 1, 0)

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

