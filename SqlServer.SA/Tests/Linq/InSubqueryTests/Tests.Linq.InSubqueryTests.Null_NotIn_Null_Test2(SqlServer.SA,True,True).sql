-- SqlServer.SA SqlServer.2019

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID] OR [t].[ID] IS NULL AND [p].[ID] IS NULL
	)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

