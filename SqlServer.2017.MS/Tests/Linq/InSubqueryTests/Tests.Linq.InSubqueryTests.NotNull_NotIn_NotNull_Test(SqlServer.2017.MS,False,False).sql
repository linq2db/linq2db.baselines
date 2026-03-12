-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[PK],
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] NOT IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)
ORDER BY
	[t].[PK]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[PK],
	[t1].[ID]
FROM
	[test_in_2] [t1]

