-- SqlServer.2008
UPDATE
	[TestBool]
SET
	[Value] = CASE
		WHEN [TestBool].[Id] > 0 THEN CASE
			WHEN [TestBool].[Value] = 0 OR [TestBool].[Value] IS NULL
				THEN 1
			ELSE 0
		END
		ELSE NULL
	END

-- SqlServer.2008
SELECT
	[r].[Value]
FROM
	[TestBool] [r]
ORDER BY
	[r].[Id]

