-- SqlServer.2014

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

