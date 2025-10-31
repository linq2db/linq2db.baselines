-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

