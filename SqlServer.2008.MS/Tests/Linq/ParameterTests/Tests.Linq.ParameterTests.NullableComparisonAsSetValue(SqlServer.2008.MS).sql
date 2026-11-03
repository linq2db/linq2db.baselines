-- SqlServer.2008.MS SqlServer.2008
UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL
			THEN 1
		ELSE 0
	END

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

