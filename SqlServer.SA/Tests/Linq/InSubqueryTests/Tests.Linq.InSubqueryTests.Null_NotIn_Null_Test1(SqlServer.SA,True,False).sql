-- SqlServer.SA SqlServer.2019

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
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

